import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:gpt3_flashcards/data/open_ai/open_ai_api_key.dart';
import 'package:gpt3_flashcards/data/open_ai/request/open_ai_completion_request_body.gen.dart';
import 'package:gpt3_flashcards/data/open_ai/response/open_ai_completion_response.gen.dart';
import 'package:http/http.dart' as http;

/// Base url to OpenAI API.
const baseOpenAIUrl = 'https://api.openai.com/v1';

/// Service for emitting requests to the GPT-3 API.
///
/// [openAIApiKey] must be set before using this class.
class OpenAIApiService {
  static const _logTag = '[OpenAIApiService]:';

  final _client = http.Client();

  /// Given a prompt, the model will return one or more predicted completions, and can also return the probabilities of alternative tokens at each position.
  ///
  /// See doc: https://beta.openai.com/docs/api-reference/completions
  Future<OpenAICompletionResponse> createCompletion(
      OpenAICompletionRequestBody body) async {
    final uri = Uri.parse('$baseOpenAIUrl/completions');
    try {
      debugPrint('$_logTag Request: $uri');
      var response = await _client.post(
        uri,
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.value,
          HttpHeaders.authorizationHeader: 'Bearer $openAIApiKey',
        },
        body: jsonEncode(body.toJson()),
      );
      final bodyDecoded = utf8.decode(response.bodyBytes);
      debugPrint('$_logTag Response: ${response.statusCode} ${bodyDecoded}');
      if (response.statusCode == 200) {
        final decoded = jsonDecode(bodyDecoded) as Map<String, dynamic>;
        return OpenAICompletionResponse.fromJson(decoded);
      }
      throw Exception('$_logTag Request unsuccessful: '
          'code ${response.statusCode}, ${bodyDecoded}');
    } catch (ex, stacktrace) {
      debugPrint('$_logTag Error: $ex,\nStacktrace: $stacktrace');
      rethrow;
    }
  }

  /// Dispose service. Closes http client.
  void dispose() {
    _client.close();
  }
}
