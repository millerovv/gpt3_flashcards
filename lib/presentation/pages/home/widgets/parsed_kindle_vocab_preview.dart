import 'package:flutter/material.dart';
import 'package:gpt3_flashcards/presentation/models/parsed_kindle_vocab_model.dart';

class ParsedKindleVocabPreview extends StatelessWidget {
  const ParsedKindleVocabPreview({Key? key, required this.vocabModel})
      : super(key: key);

  final ParsedKindleVocabModel vocabModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...vocabModel.entries.map(
          (entry) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(entry.word),
                      if (entry.wordBeforeCleanUp != null)
                        Text(
                          entry.wordBeforeCleanUp!,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  decoration: TextDecoration.lineThrough),
                        ),
                    ],
                  ),
                  const SizedBox(width: 24),
                  Expanded(child: Text(entry.usageExample)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
