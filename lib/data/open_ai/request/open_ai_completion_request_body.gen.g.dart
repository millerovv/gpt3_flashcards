// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_ai_completion_request_body.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenAICompletionRequestBody _$$_OpenAICompletionRequestBodyFromJson(
        Map<String, dynamic> json) =>
    _$_OpenAICompletionRequestBody(
      prompt: json['prompt'] as String,
      model: json['model'] as String? ?? openAIDavinci003Model,
      suffix: json['suffix'] as String?,
      maxTokens: json['max_tokens'] as int?,
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: (json['top_p'] as num?)?.toDouble(),
      n: json['n'] as int?,
      stream: json['stream'] as bool?,
      logProbs: json['logprobs'] as int?,
      echo: json['echo'] as bool?,
      stop: (json['stop'] as List<dynamic>?)?.map((e) => e as String).toList(),
      presencePenalty: (json['presence_penalty'] as num?)?.toDouble(),
      frequencyPenalty: (json['frequency_penalty'] as num?)?.toDouble(),
      bestOf: json['best_of'] as int?,
      logitBias: json['logit_bias'] as Map<String, dynamic>?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$_OpenAICompletionRequestBodyToJson(
    _$_OpenAICompletionRequestBody instance) {
  final val = <String, dynamic>{
    'prompt': instance.prompt,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('model', instance.model);
  writeNotNull('suffix', instance.suffix);
  writeNotNull('max_tokens', instance.maxTokens);
  writeNotNull('temperature', instance.temperature);
  writeNotNull('top_p', instance.topP);
  writeNotNull('n', instance.n);
  writeNotNull('stream', instance.stream);
  writeNotNull('logprobs', instance.logProbs);
  writeNotNull('echo', instance.echo);
  writeNotNull('stop', instance.stop);
  writeNotNull('presence_penalty', instance.presencePenalty);
  writeNotNull('frequency_penalty', instance.frequencyPenalty);
  writeNotNull('best_of', instance.bestOf);
  writeNotNull('logit_bias', instance.logitBias);
  writeNotNull('user', instance.user);
  return val;
}
