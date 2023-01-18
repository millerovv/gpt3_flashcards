// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_ai_response_choices.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenAIResponseChoices _$OpenAIResponseChoicesFromJson(
    Map<String, dynamic> json) {
  return _OpenAIResponseChoices.fromJson(json);
}

/// @nodoc
mixin _$OpenAIResponseChoices {
  String get text => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @JsonKey(name: 'finish_reason')
  String get finishReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenAIResponseChoicesCopyWith<OpenAIResponseChoices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAIResponseChoicesCopyWith<$Res> {
  factory $OpenAIResponseChoicesCopyWith(OpenAIResponseChoices value,
          $Res Function(OpenAIResponseChoices) then) =
      _$OpenAIResponseChoicesCopyWithImpl<$Res, OpenAIResponseChoices>;
  @useResult
  $Res call(
      {String text,
      int index,
      @JsonKey(name: 'finish_reason') String finishReason});
}

/// @nodoc
class _$OpenAIResponseChoicesCopyWithImpl<$Res,
        $Val extends OpenAIResponseChoices>
    implements $OpenAIResponseChoicesCopyWith<$Res> {
  _$OpenAIResponseChoicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? index = null,
    Object? finishReason = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenAIResponseChoicesCopyWith<$Res>
    implements $OpenAIResponseChoicesCopyWith<$Res> {
  factory _$$_OpenAIResponseChoicesCopyWith(_$_OpenAIResponseChoices value,
          $Res Function(_$_OpenAIResponseChoices) then) =
      __$$_OpenAIResponseChoicesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      int index,
      @JsonKey(name: 'finish_reason') String finishReason});
}

/// @nodoc
class __$$_OpenAIResponseChoicesCopyWithImpl<$Res>
    extends _$OpenAIResponseChoicesCopyWithImpl<$Res, _$_OpenAIResponseChoices>
    implements _$$_OpenAIResponseChoicesCopyWith<$Res> {
  __$$_OpenAIResponseChoicesCopyWithImpl(_$_OpenAIResponseChoices _value,
      $Res Function(_$_OpenAIResponseChoices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? index = null,
    Object? finishReason = null,
  }) {
    return _then(_$_OpenAIResponseChoices(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenAIResponseChoices implements _OpenAIResponseChoices {
  const _$_OpenAIResponseChoices(
      {required this.text,
      required this.index,
      @JsonKey(name: 'finish_reason') required this.finishReason});

  factory _$_OpenAIResponseChoices.fromJson(Map<String, dynamic> json) =>
      _$$_OpenAIResponseChoicesFromJson(json);

  @override
  final String text;
  @override
  final int index;
  @override
  @JsonKey(name: 'finish_reason')
  final String finishReason;

  @override
  String toString() {
    return 'OpenAIResponseChoices(text: $text, index: $index, finishReason: $finishReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAIResponseChoices &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, index, finishReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAIResponseChoicesCopyWith<_$_OpenAIResponseChoices> get copyWith =>
      __$$_OpenAIResponseChoicesCopyWithImpl<_$_OpenAIResponseChoices>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenAIResponseChoicesToJson(
      this,
    );
  }
}

abstract class _OpenAIResponseChoices implements OpenAIResponseChoices {
  const factory _OpenAIResponseChoices(
          {required final String text,
          required final int index,
          @JsonKey(name: 'finish_reason') required final String finishReason}) =
      _$_OpenAIResponseChoices;

  factory _OpenAIResponseChoices.fromJson(Map<String, dynamic> json) =
      _$_OpenAIResponseChoices.fromJson;

  @override
  String get text;
  @override
  int get index;
  @override
  @JsonKey(name: 'finish_reason')
  String get finishReason;
  @override
  @JsonKey(ignore: true)
  _$$_OpenAIResponseChoicesCopyWith<_$_OpenAIResponseChoices> get copyWith =>
      throw _privateConstructorUsedError;
}
