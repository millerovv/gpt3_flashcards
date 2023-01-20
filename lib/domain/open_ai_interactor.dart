import 'dart:convert';

import 'package:gpt3_flashcards/data/open_ai/open_ai_api_service.dart';
import 'package:gpt3_flashcards/data/open_ai/request/open_ai_completion_request_body.gen.dart';
import 'package:gpt3_flashcards/data/open_ai/response/open_ai_completion_response.gen.dart';

const maxTotalTokens = 4096;
const maxPromptTokens = 1700;
const kTokenToWord = 0.2;

class OpenAIInteractor {
  OpenAIInteractor(this.service);

  final OpenAIApiService service;

  Future<List<String>> gpt3CleanUpGermanWords(List<String> words) async {
    final requestBodies = _generateCompletionRequests(
      entries: words,
      promptGenerator: _getCleanUpWordsPrompt,
    );
    final responses = await Future.wait(
        requestBodies.map((e) => service.createCompletion(e)));
    return _parseCompletionResponses(responses);
  }

  Future<List<String>> gpt3GenerateFlashcards(List<String> words) async {
    final requestBodies = _generateCompletionRequests(
      entries: words,
      promptGenerator: _generateFlashcardsPrompt,
    );
    final responses = await Future.wait(
        requestBodies.map((e) => service.createCompletion(e)));
    return _parseCompletionResponses(responses);
  }

  /// Returns a list of Completion request bodies for a list
  /// of [entries] and [promptGenerator].
  ///
  /// Considers token limits of [maxTotalTokens] and [maxPromptTokens].
  /// If total [entries] fit the limit, a list with single request is returned.
  ///
  /// Otherwise, entries are split between requests, to fit the token limit.
  List<OpenAICompletionRequestBody> _generateCompletionRequests({
    required List<String> entries,
    required String Function(List<String> entries) promptGenerator,
  }) {
    final requestBodies = <OpenAICompletionRequestBody>[];
    final allEntriesPrompt = promptGenerator(entries);
    if (allEntriesPrompt.openAITokensLength < maxPromptTokens) {
      requestBodies.add(OpenAICompletionRequestBody(
        prompt: allEntriesPrompt,
        maxTokens: maxTotalTokens - allEntriesPrompt.openAITokensLength,
        temperature: 0.1,
      ));
    } else {
      final runEntries = <String>[];
      var runTokens = 0;
      for (final entry in entries) {
        if (runTokens + entry.openAITokensLength >= maxPromptTokens) {
          requestBodies.add(
            OpenAICompletionRequestBody(
              prompt: promptGenerator(runEntries),
              maxTokens: maxTotalTokens - runTokens,
              temperature: 0.1,
            ),
          );
          runEntries.clear();
          runTokens = 0;
        }
        runEntries.add(entry);
        runTokens += entry.openAITokensLength;
      }
      if (runEntries.isNotEmpty) {
        requestBodies.add(
          OpenAICompletionRequestBody(
            prompt: promptGenerator(runEntries),
            maxTokens: maxTotalTokens - runTokens,
            temperature: 0.1,
          ),
        );
      }
    }
    return requestBodies;
  }

  List<String> _parseCompletionResponses(
      List<OpenAICompletionResponse> responses) {
    final result = <String>[];
    for (final response in responses) {
      if (response.choices.isEmpty) {
        throw Exception('Empty response');
      }
      final text = response.choices.first.text;
      result.addAll((jsonDecode(text) as List).cast<String>());
    }
    return result;
  }

  String _getCleanUpWordsPrompt(List<String> words) {
    return 'Based on a list of german words, create an array with these words in the form: ["word1", "word2", "word3"]. '
        'If the word is a verb, convert it to the infinitive form, if needed. '
        'If the word is an adjective, convert it to the single form in nominative case. '
        'If the word is a noun, convert it to the single form and add the definite article. '
        'My list of words:\n${words.join('\n')}';
  }

  String _generateFlashcardsPrompt(List<String> words) {
    return 'You will generate list of flashcards based on a list of german words. '
        'For each word, provide one or multiple most popular Russian translations and a short example in german. '
        'Output in format word|=1=|translation|=2=|example. '
        'My list of words:\n${words.join('\n')}';
  }
}

extension StringOpenAITokenExt on String {
  int get openAITokensLength => (length / kTokenToWord).round();
}
