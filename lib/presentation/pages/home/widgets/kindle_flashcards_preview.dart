import 'package:flutter/material.dart';
import 'package:gpt3_flashcards/presentation/models/kindle_flashcard_model.dart';

class KindleFlashcardsPreview extends StatefulWidget {
  const KindleFlashcardsPreview({Key? key, required this.kindleFlashcards})
      : super(key: key);

  final List<KindleFlashcardModel> kindleFlashcards;

  @override
  State<KindleFlashcardsPreview> createState() =>
      _KindleFlashcardsPreviewState();
}

class _KindleFlashcardsPreviewState extends State<KindleFlashcardsPreview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...widget.kindleFlashcards.map((entry) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(entry.word),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Flexible(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(entry.translation),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(entry.example),
                        const SizedBox(height: 4),
                        Text(entry.vocabEntry.usageExample),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ],
    );
  }
}
