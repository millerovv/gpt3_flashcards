import 'package:equatable/equatable.dart';

class KindleVocabModel with EquatableMixin {
  KindleVocabModel(this.entries);

  final List<KindleVocabEntryModel> entries;

  @override
  List<Object?> get props => [entries];
}

class KindleVocabEntryModel with EquatableMixin {
  KindleVocabEntryModel({
    required this.word,
    required this.usageExample,
    this.wordBeforeCleanUp,
  });

  final String word;
  final String usageExample;

  final String? wordBeforeCleanUp;

  KindleVocabEntryModel copyWith({
    String? word,
    String? usageExample,
    String? wordBeforeCleanUp,
  }) =>
      KindleVocabEntryModel(
        word: word ?? this.word,
        usageExample: usageExample ?? this.usageExample,
        wordBeforeCleanUp: wordBeforeCleanUp ?? this.wordBeforeCleanUp,
      );

  @override
  List<Object?> get props => [word, usageExample, wordBeforeCleanUp];
}
