import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt3_flashcards/presentation/models/parsed_kindle_vocab_model.dart';

final parsedKindleVocabProvider =
    StateProvider.autoDispose<ParsedKindleVocabModel?>((ref) => null);
