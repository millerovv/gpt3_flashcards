import 'package:equatable/equatable.dart';

class FlashcardModel with EquatableMixin {
  FlashcardModel({
    required this.word,
    required this.translation,
    required this.example,
  });

  final String word;
  final String translation;
  final String example;

  @override
  List<Object?> get props => [word, translation, example];
}
