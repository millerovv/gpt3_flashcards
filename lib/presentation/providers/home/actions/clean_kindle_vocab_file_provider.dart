import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt3_flashcards/domain/open_ai_interactor.dart';
import 'package:gpt3_flashcards/locator/locator.dart';
import 'package:gpt3_flashcards/presentation/models/kindle_vocab_model.dart';
import 'package:gpt3_flashcards/presentation/providers/base/action_status_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/data/kindle_vocab_file_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/data/parsed_kindle_vocab_provider.dart';

const cleanKindleVocabFileKey = 'clean_kindle_vocab_key';

final cleanKindleVocabFileStatusProvider =
    declareActionStatusProvider(cleanKindleVocabFileKey);

final cleanKindleVocabFileProvider =
    Provider.autoDispose<Future<void> Function()>(
  (ref) {
    final interactor = locator<OpenAIInteractor>();
    return () async {
      await ref
          .read(actionStatusProvider(cleanKindleVocabFileKey).notifier)
          .run(() async {
        final file = ref.read(kindleVocabFileProvider);
        if (file == null) {
          return;
        }
        final lines = await file.readAsLines();
        final entries = <KindleVocabEntryModel>[];
        for (var line in lines) {
          final split = line.split('\t');
          if (split.length > 1) {
            entries.add(KindleVocabEntryModel(
              word: split[0],
              usageExample: split[1],
            ));
          }
        }
        final cleanedWords = await interactor
            .gpt3CleanUpGermanWords(entries.map((e) => e.word).toList());

        if (entries.length != cleanedWords.length) {
          debugPrint('Cleaning result length does not match :c '
              'original entries: ${entries.length} items, '
              'cleaned entries: ${cleanedWords.length} items.');
        }

        final cleanedEntries = <KindleVocabEntryModel>[];

        for (int i = 0; i < min(entries.length, cleanedWords.length) - 1; i++) {
          final originalEntry = entries[i];
          final cleanedWord = cleanedWords[i];
          cleanedEntries.add(originalEntry.copyWith(
            wordBeforeCleanUp: originalEntry.word,
            word: cleanedWord,
          ));
        }

        ref.read(parsedKindleVocabProvider.notifier).state =
            KindleVocabModel(cleanedEntries);
      });
    };
  },
  dependencies: [
    kindleVocabFileProvider,
    actionStatusProvider(cleanKindleVocabFileKey),
    parsedKindleVocabProvider,
  ],
);
