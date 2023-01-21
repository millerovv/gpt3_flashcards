import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gpt3_flashcards/presentation/pages/home/widgets/kindle_flashcards_preview.dart';
import 'package:gpt3_flashcards/presentation/pages/home/widgets/kindle_vocab_file_preview.dart';
import 'package:gpt3_flashcards/presentation/pages/home/widgets/parsed_kindle_vocab_preview.dart';
import 'package:gpt3_flashcards/presentation/providers/home/actions/clean_kindle_vocab_file_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/actions/export_kindle_flashcards_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/actions/generate_kindle_flashcards_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/actions/pick_kindle_vocab_file_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/data/kindle_flashcards_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/data/kindle_vocab_file_provider.dart';
import 'package:gpt3_flashcards/presentation/providers/home/data/parsed_kindle_vocab_provider.dart';
import 'package:gpt3_flashcards/presentation/widgets/loading_indicator_overlay.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final vocabFile = ref.watch(kindleVocabFileProvider);
    final parsingStatus = ref.watch(cleanKindleVocabFileStatusProvider);
    final parsedVocab = ref.watch(parsedKindleVocabProvider);
    final generationStatus = ref.watch(generateKindleFlashcardsStatusProvider);
    final kindleFlashcards = ref.watch(kindleFlashcardsProvider);
    final exportStatus = ref.watch(exportKindleFlashcardsStatusProvider);
    return Scaffold(
      body: LoadingIndicatorOverlay(
        show: parsingStatus.isLoading ||
            generationStatus.isLoading ||
            exportStatus.isLoading,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'GPT-3 Flashcards Generator',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(height: 32),
                    const Text('Upload .tsv file with Kindle vocabulary.'),
                    const SizedBox(height: 8),
                    const SelectionArea(
                      child: Text(
                          'You can get the file at https://fluentcards.com/'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => ref.read(pickKindleVocabFileProvider)(),
                      child: const Padding(
                        padding: EdgeInsets.all(12),
                        child: Text('Upload'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    if (vocabFile != null) ...[
                      KindleVocabFilePreview(
                        file: vocabFile,
                        onClean: () {
                          ref.read(cleanKindleVocabFileProvider)();
                        },
                      ),
                      const SizedBox(height: 12),
                    ],
                    if (parsedVocab != null) ...[
                      ParsedKindleVocabPreview(vocabModel: parsedVocab),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () =>
                            ref.read(generateKindleFlashcardsProvider)(),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF4AA181)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12),
                          child: Text('Generate Flashcards'),
                        ),
                      ),
                      const SizedBox(height: 80),
                    ],
                    if (kindleFlashcards != null) ...[
                      KindleFlashcardsPreview(
                          kindleFlashcards: kindleFlashcards),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () =>
                            ref.read(exportKindleFlashcardsProvider)(),
                        child: const Padding(
                          padding: EdgeInsets.all(12),
                          child: Text('Export'),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
