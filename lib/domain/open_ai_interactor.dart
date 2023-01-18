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
    final cleanUpPrompt = _getCleanUpWordsPrompt(words);
    print(
        'cleanUpPrompt: L=${cleanUpPrompt.length}, T=${cleanUpPrompt.openAITokensLength}');

    if (cleanUpPrompt.openAITokensLength < maxPromptTokens) {
      final response = await service.createCompletion(
        OpenAICompletionRequestBody(
          prompt: cleanUpPrompt,
          maxTokens: maxTotalTokens - cleanUpPrompt.openAITokensLength,
          temperature: 0.1,
        ),
      );
      return _parseResponse([response]);
    } else {
      final reqBodies = <OpenAICompletionRequestBody>[];
      final reqEntries = <String>[];
      var reqTokens = 0;
      for (int i = 0; i < words.length; i++) {
        final nextWord = words[i];
        if (reqTokens + nextWord.openAITokensLength < maxPromptTokens) {
          reqEntries.add(nextWord);
          reqTokens += nextWord.openAITokensLength;
        } else {
          print('add reqBody T=${maxTotalTokens - reqTokens}');
          reqBodies.add(
            OpenAICompletionRequestBody(
              prompt: _getCleanUpWordsPrompt(reqEntries),
              maxTokens: maxTotalTokens - reqTokens,
              temperature: 0.1,
            ),
          );
          reqEntries.clear();
          reqTokens = 0;
        }
      }
      if (reqEntries.isNotEmpty) {
        reqBodies.add(
          OpenAICompletionRequestBody(
            prompt: _getCleanUpWordsPrompt(reqEntries),
            maxTokens: maxTotalTokens - reqTokens,
            temperature: 0.1,
          ),
        );
      }
      final responses =
          await Future.wait(reqBodies.map((e) => service.createCompletion(
                OpenAICompletionRequestBody(
                  prompt: cleanUpPrompt,
                  maxTokens: maxTotalTokens - cleanUpPrompt.openAITokensLength,
                ),
              )));
      return _parseResponse(responses);
    }
  }

  List<String> _parseResponse(List<OpenAICompletionResponse> responses) {
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
        'If the word is a noun, convert it to the single form and add the definite article, if needed. My list of words:\n${words.join('\n')}';
  }
}

extension StringOpenAITokenExt on String {
  int get openAITokensLength => (length / kTokenToWord).round();
}
