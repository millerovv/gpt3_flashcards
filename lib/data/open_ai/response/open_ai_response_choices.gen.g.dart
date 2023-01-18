// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_ai_response_choices.gen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenAIResponseChoices _$$_OpenAIResponseChoicesFromJson(
        Map<String, dynamic> json) =>
    _$_OpenAIResponseChoices(
      text: json['text'] as String,
      index: json['index'] as int,
      finishReason: json['finish_reason'] as String,
    );

Map<String, dynamic> _$$_OpenAIResponseChoicesToJson(
        _$_OpenAIResponseChoices instance) =>
    <String, dynamic>{
      'text': instance.text,
      'index': instance.index,
      'finish_reason': instance.finishReason,
    };
