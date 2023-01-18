// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_ai_completion_response.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenAICompletionResponse _$OpenAICompletionResponseFromJson(
    Map<String, dynamic> json) {
  return _OpenAICompletionResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenAICompletionResponse {
  String get id => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  int get createdTimestamp => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  List<OpenAIResponseChoices> get choices => throw _privateConstructorUsedError;
  OpenAIResponseUsage get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenAICompletionResponseCopyWith<OpenAICompletionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAICompletionResponseCopyWith<$Res> {
  factory $OpenAICompletionResponseCopyWith(OpenAICompletionResponse value,
          $Res Function(OpenAICompletionResponse) then) =
      _$OpenAICompletionResponseCopyWithImpl<$Res, OpenAICompletionResponse>;
  @useResult
  $Res call(
      {String id,
      String object,
      @JsonKey(name: 'created') int createdTimestamp,
      String model,
      List<OpenAIResponseChoices> choices,
      OpenAIResponseUsage usage});

  $OpenAIResponseUsageCopyWith<$Res> get usage;
}

/// @nodoc
class _$OpenAICompletionResponseCopyWithImpl<$Res,
        $Val extends OpenAICompletionResponse>
    implements $OpenAICompletionResponseCopyWith<$Res> {
  _$OpenAICompletionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? createdTimestamp = null,
    Object? model = null,
    Object? choices = null,
    Object? usage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      createdTimestamp: null == createdTimestamp
          ? _value.createdTimestamp
          : createdTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<OpenAIResponseChoices>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as OpenAIResponseUsage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenAIResponseUsageCopyWith<$Res> get usage {
    return $OpenAIResponseUsageCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OpenAICompletionResponseCopyWith<$Res>
    implements $OpenAICompletionResponseCopyWith<$Res> {
  factory _$$_OpenAICompletionResponseCopyWith(
          _$_OpenAICompletionResponse value,
          $Res Function(_$_OpenAICompletionResponse) then) =
      __$$_OpenAICompletionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      @JsonKey(name: 'created') int createdTimestamp,
      String model,
      List<OpenAIResponseChoices> choices,
      OpenAIResponseUsage usage});

  @override
  $OpenAIResponseUsageCopyWith<$Res> get usage;
}

/// @nodoc
class __$$_OpenAICompletionResponseCopyWithImpl<$Res>
    extends _$OpenAICompletionResponseCopyWithImpl<$Res,
        _$_OpenAICompletionResponse>
    implements _$$_OpenAICompletionResponseCopyWith<$Res> {
  __$$_OpenAICompletionResponseCopyWithImpl(_$_OpenAICompletionResponse _value,
      $Res Function(_$_OpenAICompletionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? createdTimestamp = null,
    Object? model = null,
    Object? choices = null,
    Object? usage = null,
  }) {
    return _then(_$_OpenAICompletionResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      createdTimestamp: null == createdTimestamp
          ? _value.createdTimestamp
          : createdTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<OpenAIResponseChoices>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as OpenAIResponseUsage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenAICompletionResponse implements _OpenAICompletionResponse {
  const _$_OpenAICompletionResponse(
      {required this.id,
      required this.object,
      @JsonKey(name: 'created') required this.createdTimestamp,
      required this.model,
      final List<OpenAIResponseChoices> choices = const [],
      required this.usage})
      : _choices = choices;

  factory _$_OpenAICompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OpenAICompletionResponseFromJson(json);

  @override
  final String id;
  @override
  final String object;
  @override
  @JsonKey(name: 'created')
  final int createdTimestamp;
  @override
  final String model;
  final List<OpenAIResponseChoices> _choices;
  @override
  @JsonKey()
  List<OpenAIResponseChoices> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final OpenAIResponseUsage usage;

  @override
  String toString() {
    return 'OpenAICompletionResponse(id: $id, object: $object, createdTimestamp: $createdTimestamp, model: $model, choices: $choices, usage: $usage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAICompletionResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.createdTimestamp, createdTimestamp) ||
                other.createdTimestamp == createdTimestamp) &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, createdTimestamp,
      model, const DeepCollectionEquality().hash(_choices), usage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAICompletionResponseCopyWith<_$_OpenAICompletionResponse>
      get copyWith => __$$_OpenAICompletionResponseCopyWithImpl<
          _$_OpenAICompletionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenAICompletionResponseToJson(
      this,
    );
  }
}

abstract class _OpenAICompletionResponse implements OpenAICompletionResponse {
  const factory _OpenAICompletionResponse(
      {required final String id,
      required final String object,
      @JsonKey(name: 'created') required final int createdTimestamp,
      required final String model,
      final List<OpenAIResponseChoices> choices,
      required final OpenAIResponseUsage usage}) = _$_OpenAICompletionResponse;

  factory _OpenAICompletionResponse.fromJson(Map<String, dynamic> json) =
      _$_OpenAICompletionResponse.fromJson;

  @override
  String get id;
  @override
  String get object;
  @override
  @JsonKey(name: 'created')
  int get createdTimestamp;
  @override
  String get model;
  @override
  List<OpenAIResponseChoices> get choices;
  @override
  OpenAIResponseUsage get usage;
  @override
  @JsonKey(ignore: true)
  _$$_OpenAICompletionResponseCopyWith<_$_OpenAICompletionResponse>
      get copyWith => throw _privateConstructorUsedError;
}
