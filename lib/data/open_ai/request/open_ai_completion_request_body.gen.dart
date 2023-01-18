// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_ai_completion_request_body.gen.freezed.dart';
part 'open_ai_completion_request_body.gen.g.dart';

/// Contains key for davinci-003 Gpt-3 model.
///
/// For more models see [reference](// https://beta.openai.com/docs/models/gpt-3).
const openAIDavinci003Model = 'text-davinci-003';

/// Contains parameters for gpt-3 completion request.
///
/// See [API reference](https://beta.openai.com/docs/api-reference/completions/create).
@freezed
class OpenAICompletionRequestBody with _$OpenAICompletionRequestBody {
  /// Creates instance of [OpenAICompletionRequestBody].
  @JsonSerializable(includeIfNull: false)
  const factory OpenAICompletionRequestBody({
    required String prompt,
    @Default(openAIDavinci003Model) String? model,
    String? suffix,
    @JsonKey(name: 'max_tokens') int? maxTokens,
    double? temperature,
    @JsonKey(name: 'top_p') double? topP,
    int? n,
    bool? stream,
    @JsonKey(name: 'logprobs') int? logProbs,
    bool? echo,
    List<String>? stop,
    @JsonKey(name: 'presence_penalty') double? presencePenalty,
    @JsonKey(name: 'frequency_penalty') double? frequencyPenalty,
    @JsonKey(name: 'best_of') int? bestOf,
    @JsonKey(name: 'logit_bias') Map<String, dynamic>? logitBias,
    String? user,
  }) = _OpenAICompletionRequestBody;

  /// Parses JSON to a [OpenAICompletionRequestBody].
  factory OpenAICompletionRequestBody.fromJson(Map<String, dynamic> json) =>
      _$OpenAICompletionRequestBodyFromJson(json);
}
