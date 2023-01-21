import 'package:flutter/material.dart';
import 'package:gpt3_flashcards/presentation/models/kindle_vocab_model.dart';

class ParsedKindleVocabPreview extends StatefulWidget {
  const ParsedKindleVocabPreview({
    Key? key,
    required this.vocabModel,
  }) : super(key: key);

  final KindleVocabModel vocabModel;

  @override
  State<ParsedKindleVocabPreview> createState() =>
      _ParsedKindleVocabPreviewState();
}

class _ParsedKindleVocabPreviewState extends State<ParsedKindleVocabPreview> {
  static const _notExpandedCutOffLength = 5;

  bool expanded = false;

  @override
  void initState() {
    super.initState();
    if (widget.vocabModel.entries.length <= _notExpandedCutOffLength) {
      expanded = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    var entries = widget.vocabModel.entries;
    if (!expanded) {
      entries =
          widget.vocabModel.entries.take(_notExpandedCutOffLength).toList();
    }
    return Column(
      children: [
        ...entries.map(
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
        if (expanded)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () => setState(() => expanded = false),
              child: const Text('Show Less'),
            ),
          )
        else
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () => setState(() => expanded = true),
              child: Text('Show All (${widget.vocabModel.entries.length})'),
            ),
          ),
      ],
    );
  }
}
