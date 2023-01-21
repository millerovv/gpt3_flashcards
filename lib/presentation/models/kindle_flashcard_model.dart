import 'package:gpt3_flashcards/presentation/models/flashcard_model.dart';
import 'package:gpt3_flashcards/presentation/models/kindle_vocab_model.dart';

class KindleFlashcardModel extends FlashcardModel {
  KindleFlashcardModel({
    required this.vocabEntry,
    required super.word,
    required super.translation,
    required super.example,
  });

  final KindleVocabEntryModel vocabEntry;

  @override
  List<Object?> get props => [...super.props, vocabEntry];
}
