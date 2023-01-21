import 'dart:io';

import 'package:flutter/material.dart';

class KindleVocabFilePreview extends StatelessWidget {
  const KindleVocabFilePreview({
    Key? key,
    required this.file,
    required this.onClean,
  }) : super(key: key);

  final File file;
  final VoidCallback onClean;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Icon(Icons.file_present_rounded, size: 48),
            const SizedBox(height: 16),
            Text(
              file.path.split('/').last,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              '${(file.lengthSync() / 1024).toStringAsFixed(2)} KB',
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onClean,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF4AA181)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text('GPT-3 Clean'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
