// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_ai_response_usage.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenAIResponseUsage _$OpenAIResponseUsageFromJson(Map<String, dynamic> json) {
  return _OpenAIResponseUsage.fromJson(json);
}

/// @nodoc
mixin _$OpenAIResponseUsage {
  @JsonKey(name: 'prompt_tokens')
  int? get promptTokens => throw _privateConstructorUsedError;
  @JsonKey(name: 'completion_tokens')
  int? get completionTokens => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tokens')
  int? get totalTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenAIResponseUsageCopyWith<OpenAIResponseUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAIResponseUsageCopyWith<$Res> {
  factory $OpenAIResponseUsageCopyWith(
          OpenAIResponseUsage value, $Res Function(OpenAIResponseUsage) then) =
      _$OpenAIResponseUsageCopyWithImpl<$Res, OpenAIResponseUsage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'prompt_tokens') int? promptTokens,
      @JsonKey(name: 'completion_tokens') int? completionTokens,
      @JsonKey(name: 'total_tokens') int? totalTokens});
}

/// @nodoc
class _$OpenAIResponseUsageCopyWithImpl<$Res, $Val extends OpenAIResponseUsage>
    implements $OpenAIResponseUsageCopyWith<$Res> {
  _$OpenAIResponseUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = freezed,
    Object? completionTokens = freezed,
    Object? totalTokens = freezed,
  }) {
    return _then(_value.copyWith(
      promptTokens: freezed == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      completionTokens: freezed == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTokens: freezed == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenAIResponseUsageCopyWith<$Res>
    implements $OpenAIResponseUsageCopyWith<$Res> {
  factory _$$_OpenAIResponseUsageCopyWith(_$_OpenAIResponseUsage value,
          $Res Function(_$_OpenAIResponseUsage) then) =
      __$$_OpenAIResponseUsageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'prompt_tokens') int? promptTokens,
      @JsonKey(name: 'completion_tokens') int? completionTokens,
      @JsonKey(name: 'total_tokens') int? totalTokens});
}

/// @nodoc
class __$$_OpenAIResponseUsageCopyWithImpl<$Res>
    extends _$OpenAIResponseUsageCopyWithImpl<$Res, _$_OpenAIResponseUsage>
    implements _$$_OpenAIResponseUsageCopyWith<$Res> {
  __$$_OpenAIResponseUsageCopyWithImpl(_$_OpenAIResponseUsage _value,
      $Res Function(_$_OpenAIResponseUsage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = freezed,
    Object? completionTokens = freezed,
    Object? totalTokens = freezed,
  }) {
    return _then(_$_OpenAIResponseUsage(
      promptTokens: freezed == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      completionTokens: freezed == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTokens: freezed == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenAIResponseUsage implements _OpenAIResponseUsage {
  const _$_OpenAIResponseUsage(
      {@JsonKey(name: 'prompt_tokens') this.promptTokens,
      @JsonKey(name: 'completion_tokens') this.completionTokens,
      @JsonKey(name: 'total_tokens') this.totalTokens});

  factory _$_OpenAIResponseUsage.fromJson(Map<String, dynamic> json) =>
      _$$_OpenAIResponseUsageFromJson(json);

  @override
  @JsonKey(name: 'prompt_tokens')
  final int? promptTokens;
  @override
  @JsonKey(name: 'completion_tokens')
  final int? completionTokens;
  @override
  @JsonKey(name: 'total_tokens')
  final int? totalTokens;

  @override
  String toString() {
    return 'OpenAIResponseUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAIResponseUsage &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, promptTokens, completionTokens, totalTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAIResponseUsageCopyWith<_$_OpenAIResponseUsage> get copyWith =>
      __$$_OpenAIResponseUsageCopyWithImpl<_$_OpenAIResponseUsage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenAIResponseUsageToJson(
      this,
    );
  }
}

abstract class _OpenAIResponseUsage implements OpenAIResponseUsage {
  const factory _OpenAIResponseUsage(
          {@JsonKey(name: 'prompt_tokens') final int? promptTokens,
          @JsonKey(name: 'completion_tokens') final int? completionTokens,
          @JsonKey(name: 'total_tokens') final int? totalTokens}) =
      _$_OpenAIResponseUsage;

  factory _OpenAIResponseUsage.fromJson(Map<String, dynamic> json) =
      _$_OpenAIResponseUsage.fromJson;

  @override
  @JsonKey(name: 'prompt_tokens')
  int? get promptTokens;
  @override
  @JsonKey(name: 'completion_tokens')
  int? get completionTokens;
  @override
  @JsonKey(name: 'total_tokens')
  int? get totalTokens;
  @override
  @JsonKey(ignore: true)
  _$$_OpenAIResponseUsageCopyWith<_$_OpenAIResponseUsage> get copyWith =>
      throw _privateConstructorUsedError;
}
