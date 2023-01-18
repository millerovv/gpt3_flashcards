class ParsedKindleVocabModel {
  ParsedKindleVocabModel(this.entries);

  final List<KindleVocabEntryModel> entries;
}

class KindleVocabEntryModel {
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
}
