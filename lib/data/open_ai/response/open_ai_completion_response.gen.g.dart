// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_ai_completion_response.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenAICompletionResponse _$$_OpenAICompletionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OpenAICompletionResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      createdTimestamp: json['created'] as int,
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>?)
              ?.map((e) =>
                  OpenAIResponseChoices.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      usage:
          OpenAIResponseUsage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OpenAICompletionResponseToJson(
        _$_OpenAICompletionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.createdTimestamp,
      'model': instance.model,
      'choices': instance.choices,
      'usage': instance.usage,
    };
