import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt3_flashcards/presentation/providers/base/action_status_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/data/kindle_flashcards_provider.dart';
import 'package:path_provider/path_provider.dart';

const exportKindleFlashcardsKey = 'export_kindle_flashcards';

final exportKindleFlashcardsStatusProvider =
    declareActionStatusProvider(exportKindleFlashcardsKey);

final exportKindleFlashcardsProvider =
    Provider.autoDispose<Future<void> Function()>(
  (ref) => () async {
    await ref
        .read(actionStatusProvider(exportKindleFlashcardsKey).notifier)
        .run(() async {
      final flashcards = ref.read(kindleFlashcardsProvider);
      if (flashcards == null) {
        throw Exception(
            'Export failed. No prepared kindle flashcards were found');
      }
      final downloadsDir = await getDownloadsDirectory();
      if (downloadsDir == null) {
        throw Exception('Export failed. Downloads directory is not available');
      }

      final now = DateTime.now();
      final exportMillsSuffix = now.millisecondsSinceEpoch;
      final exportFile =
          File('${downloadsDir.path}/anki_export_$exportMillsSuffix.txt');
      if (exportFile.existsSync()) {
        throw Exception('Export failed. File already exists. Please try again');
      }

      final exportText = StringBuffer();
      for (final flashcard in flashcards) {
        exportText.writeln(
            '${flashcard.word}|${flashcard.translation}|${flashcard.example}<br><br>${flashcard.vocabEntry.usageExample}');
      }
      await exportFile.writeAsString(exportText.toString());
    });
  },
  dependencies: [kindleFlashcardsProvider],
);
