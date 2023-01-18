import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt3_flashcards/presentation/providers/home/actions/pick_kindle_parsed_vocab_file_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/data/kindle_parsed_vocab_file_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final parsedVocabFile = ref.watch(kindleParsedVocabFileProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Upload vocab.db'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.read(pickKindleParsedVocabFileProvider)(),
              child: Text('Upload'),
            )
          ],
        ),
      ),
    );
  }
}
