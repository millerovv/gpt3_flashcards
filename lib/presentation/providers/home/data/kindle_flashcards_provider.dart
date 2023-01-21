import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt3_flashcards/presentation/models/kindle_flashcard_model.dart';

final kindleFlashcardsProvider =
    StateProvider.autoDispose<List<KindleFlashcardModel>?>((ref) => null);
