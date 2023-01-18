import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt3_flashcards/presentation/providers/home/data/kindle_vocab_file_provider.dart';

final pickKindleVocabFileProvider =
    Provider.autoDispose<Future<void> Function()>((ref) {
  return () async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['tsv'],
    );
    if (result == null || result.files.isEmpty) {
      throw Exception('Could not pick vocab.db');
    }
    final file = File(result.files.first.path!);
    ref.read(kindleVocabFileProvider.notifier).state = file;
  };
}, dependencies: [kindleVocabFileProvider]);
