// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_ai_response_usage.gen.freezed.dart';
part 'open_ai_response_usage.gen.g.dart';

/// Response entity on GPT-3 API requests containing usage metadata.
///
/// See [API reference](https://beta.openai.com/docs/api-reference/).
@freezed
class OpenAIResponseUsage with _$OpenAIResponseUsage {
  /// Creates an instance of the class.
  const factory OpenAIResponseUsage({
    @JsonKey(name: 'prompt_tokens') int? promptTokens,
    @JsonKey(name: 'completion_tokens') int? completionTokens,
    @JsonKey(name: 'total_tokens') int? totalTokens,
  }) = _OpenAIResponseUsage;

  /// Parses JSON to a [OpenAIResponseUsage].
  factory OpenAIResponseUsage.fromJson(Map<String, dynamic> json) =>
      _$OpenAIResponseUsageFromJson(json);
}
