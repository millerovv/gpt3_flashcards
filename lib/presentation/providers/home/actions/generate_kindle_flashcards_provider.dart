import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt3_flashcards/domain/open_ai_interactor.dart';
import 'package:gpt3_flashcards/locator/locator.dart';
import 'package:gpt3_flashcards/presentation/models/kindle_flashcard_model.dart';
import 'package:gpt3_flashcards/presentation/providers/base/action_status_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/data/kindle_flashcards_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/data/parsed_kindle_vocab_provider.dart';

const generateKindleFlashcardsProviderKey = 'generate_kindle_flashcards';

final generateKindleFlashcardsStatusProvider =
    declareActionStatusProvider(generateKindleFlashcardsProviderKey);

final generateKindleFlashcardsProvider =
    Provider.autoDispose<Future<void> Function()>(
  (ref) {
    final interactor = locator<OpenAIInteractor>();
    return () async {
      await ref
          .read(actionStatusProvider(generateKindleFlashcardsProviderKey)
              .notifier)
          .run(() async {
        final kindleVocab = ref.read(parsedKindleVocabProvider);
        if (kindleVocab == null) {
          return;
        }
        final words = kindleVocab.entries.map((entry) => entry.word).toList();
        final flashcards = await interactor.gpt3GenerateFlashcards(words);

        if (words.length != flashcards.length) {
          throw Exception(
              'Generated flashcards length does not match input entries');
        }

        final kindleFlashcards = <KindleFlashcardModel>[];
        for (int i = 0; i < words.length; i++) {
          final flashcard = flashcards[i];
          final entry = kindleVocab.entries[i];
          final kindleFlashcard = KindleFlashcardModel(
            vocabEntry: entry,
            word: flashcard.word,
            translation: flashcard.translation,
            example: flashcard.example,
          );
          kindleFlashcards.add(kindleFlashcard);
        }

        ref.read(kindleFlashcardsProvider.notifier).state = kindleFlashcards;
      });
    };
  },
  dependencies: [
    actionStatusProvider(generateKindleFlashcardsProviderKey),
    parsedKindleVocabProvider,
    kindleFlashcardsProvider,
  ],
);
