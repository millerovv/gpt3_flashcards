// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_ai_response_choices.gen.freezed.dart';
part 'open_ai_response_choices.gen.g.dart';

/// Response entity on GPT-3 API requests containing result.
///
/// See [API reference](https://beta.openai.com/docs/api-reference/).
@freezed
class OpenAIResponseChoices with _$OpenAIResponseChoices {
  /// Creates an instance of the class.
  const factory OpenAIResponseChoices({
    required String text,
    required int index,
    @JsonKey(name: 'finish_reason') required String finishReason,
  }) = _OpenAIResponseChoices;

  /// Parses JSON to a [OpenAIResponseChoices].
  factory OpenAIResponseChoices.fromJson(Map<String, dynamic> json) =>
      _$OpenAIResponseChoicesFromJson(json);
}
