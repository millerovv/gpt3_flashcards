// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_ai_response_usage.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenAIResponseUsage _$$_OpenAIResponseUsageFromJson(
        Map<String, dynamic> json) =>
    _$_OpenAIResponseUsage(
      promptTokens: json['prompt_tokens'] as int?,
      completionTokens: json['completion_tokens'] as int?,
      totalTokens: json['total_tokens'] as int?,
    );

Map<String, dynamic> _$$_OpenAIResponseUsageToJson(
        _$_OpenAIResponseUsage instance) =>
    <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
    };
