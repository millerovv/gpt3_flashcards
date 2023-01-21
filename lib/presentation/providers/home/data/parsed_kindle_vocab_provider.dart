import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt3_flashcards/presentation/models/kindle_vocab_model.dart';

final parsedKindleVocabProvider =
    StateProvider.autoDispose<KindleVocabModel?>((ref) => null);
