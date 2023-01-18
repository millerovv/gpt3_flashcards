// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gpt3_flashcards/data/open_ai/response/open_ai_response_choices.gen.dart';
import 'package:gpt3_flashcards/data/open_ai/response/open_ai_response_usage.gen.dart';

part 'open_ai_completion_response.gen.freezed.dart';
part 'open_ai_completion_response.gen.g.dart';

/// Response for GPT-3 Completion API request.
///
/// See [API reference](https://beta.openai.com/docs/api-reference/completions/create).
@freezed
class OpenAICompletionResponse with _$OpenAICompletionResponse {
  /// Creates an instance of the class.
  const factory OpenAICompletionResponse({
    required String id,
    required String object,
    @JsonKey(name: 'created') required int createdTimestamp,
    required String model,
    @Default([]) List<OpenAIResponseChoices> choices,
    required OpenAIResponseUsage usage,
  }) = _OpenAICompletionResponse;

  /// Parses JSON to a [OpenAICompletionResponse].
  factory OpenAICompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenAICompletionResponseFromJson(json);
}
