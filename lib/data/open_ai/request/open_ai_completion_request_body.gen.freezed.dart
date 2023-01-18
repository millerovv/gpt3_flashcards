// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_ai_completion_request_body.gen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenAICompletionRequestBody _$OpenAICompletionRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _OpenAICompletionRequestBody.fromJson(json);
}

/// @nodoc
mixin _$OpenAICompletionRequestBody {
  String get prompt => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get suffix => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_tokens')
  int? get maxTokens => throw _privateConstructorUsedError;
  double? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'top_p')
  double? get topP => throw _privateConstructorUsedError;
  int? get n => throw _privateConstructorUsedError;
  bool? get stream => throw _privateConstructorUsedError;
  @JsonKey(name: 'logprobs')
  int? get logProbs => throw _privateConstructorUsedError;
  bool? get echo => throw _privateConstructorUsedError;
  List<String>? get stop => throw _privateConstructorUsedError;
  @JsonKey(name: 'presence_penalty')
  double? get presencePenalty => throw _privateConstructorUsedError;
  @JsonKey(name: 'frequency_penalty')
  double? get frequencyPenalty => throw _privateConstructorUsedError;
  @JsonKey(name: 'best_of')
  int? get bestOf => throw _privateConstructorUsedError;
  @JsonKey(name: 'logit_bias')
  Map<String, dynamic>? get logitBias => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenAICompletionRequestBodyCopyWith<OpenAICompletionRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAICompletionRequestBodyCopyWith<$Res> {
  factory $OpenAICompletionRequestBodyCopyWith(
          OpenAICompletionRequestBody value,
          $Res Function(OpenAICompletionRequestBody) then) =
      _$OpenAICompletionRequestBodyCopyWithImpl<$Res,
          OpenAICompletionRequestBody>;
  @useResult
  $Res call(
      {String prompt,
      String? model,
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
      String? user});
}

/// @nodoc
class _$OpenAICompletionRequestBodyCopyWithImpl<$Res,
        $Val extends OpenAICompletionRequestBody>
    implements $OpenAICompletionRequestBodyCopyWith<$Res> {
  _$OpenAICompletionRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? model = freezed,
    Object? suffix = freezed,
    Object? maxTokens = freezed,
    Object? temperature = freezed,
    Object? topP = freezed,
    Object? n = freezed,
    Object? stream = freezed,
    Object? logProbs = freezed,
    Object? echo = freezed,
    Object? stop = freezed,
    Object? presencePenalty = freezed,
    Object? frequencyPenalty = freezed,
    Object? bestOf = freezed,
    Object? logitBias = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      topP: freezed == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as int?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      logProbs: freezed == logProbs
          ? _value.logProbs
          : logProbs // ignore: cast_nullable_to_non_nullable
              as int?,
      echo: freezed == echo
          ? _value.echo
          : echo // ignore: cast_nullable_to_non_nullable
              as bool?,
      stop: freezed == stop
          ? _value.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      presencePenalty: freezed == presencePenalty
          ? _value.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      frequencyPenalty: freezed == frequencyPenalty
          ? _value.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      bestOf: freezed == bestOf
          ? _value.bestOf
          : bestOf // ignore: cast_nullable_to_non_nullable
              as int?,
      logitBias: freezed == logitBias
          ? _value.logitBias
          : logitBias // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenAICompletionRequestBodyCopyWith<$Res>
    implements $OpenAICompletionRequestBodyCopyWith<$Res> {
  factory _$$_OpenAICompletionRequestBodyCopyWith(
          _$_OpenAICompletionRequestBody value,
          $Res Function(_$_OpenAICompletionRequestBody) then) =
      __$$_OpenAICompletionRequestBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String prompt,
      String? model,
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
      String? user});
}

/// @nodoc
class __$$_OpenAICompletionRequestBodyCopyWithImpl<$Res>
    extends _$OpenAICompletionRequestBodyCopyWithImpl<$Res,
        _$_OpenAICompletionRequestBody>
    implements _$$_OpenAICompletionRequestBodyCopyWith<$Res> {
  __$$_OpenAICompletionRequestBodyCopyWithImpl(
      _$_OpenAICompletionRequestBody _value,
      $Res Function(_$_OpenAICompletionRequestBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? model = freezed,
    Object? suffix = freezed,
    Object? maxTokens = freezed,
    Object? temperature = freezed,
    Object? topP = freezed,
    Object? n = freezed,
    Object? stream = freezed,
    Object? logProbs = freezed,
    Object? echo = freezed,
    Object? stop = freezed,
    Object? presencePenalty = freezed,
    Object? frequencyPenalty = freezed,
    Object? bestOf = freezed,
    Object? logitBias = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_OpenAICompletionRequestBody(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      maxTokens: freezed == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      topP: freezed == topP
          ? _value.topP
          : topP // ignore: cast_nullable_to_non_nullable
              as double?,
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as int?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      logProbs: freezed == logProbs
          ? _value.logProbs
          : logProbs // ignore: cast_nullable_to_non_nullable
              as int?,
      echo: freezed == echo
          ? _value.echo
          : echo // ignore: cast_nullable_to_non_nullable
              as bool?,
      stop: freezed == stop
          ? _value._stop
          : stop // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      presencePenalty: freezed == presencePenalty
          ? _value.presencePenalty
          : presencePenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      frequencyPenalty: freezed == frequencyPenalty
          ? _value.frequencyPenalty
          : frequencyPenalty // ignore: cast_nullable_to_non_nullable
              as double?,
      bestOf: freezed == bestOf
          ? _value.bestOf
          : bestOf // ignore: cast_nullable_to_non_nullable
              as int?,
      logitBias: freezed == logitBias
          ? _value._logitBias
          : logitBias // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_OpenAICompletionRequestBody implements _OpenAICompletionRequestBody {
  const _$_OpenAICompletionRequestBody(
      {required this.prompt,
      this.model = openAIDavinci003Model,
      this.suffix,
      @JsonKey(name: 'max_tokens') this.maxTokens,
      this.temperature,
      @JsonKey(name: 'top_p') this.topP,
      this.n,
      this.stream,
      @JsonKey(name: 'logprobs') this.logProbs,
      this.echo,
      final List<String>? stop,
      @JsonKey(name: 'presence_penalty') this.presencePenalty,
      @JsonKey(name: 'frequency_penalty') this.frequencyPenalty,
      @JsonKey(name: 'best_of') this.bestOf,
      @JsonKey(name: 'logit_bias') final Map<String, dynamic>? logitBias,
      this.user})
      : _stop = stop,
        _logitBias = logitBias;

  factory _$_OpenAICompletionRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_OpenAICompletionRequestBodyFromJson(json);

  @override
  final String prompt;
  @override
  @JsonKey()
  final String? model;
  @override
  final String? suffix;
  @override
  @JsonKey(name: 'max_tokens')
  final int? maxTokens;
  @override
  final double? temperature;
  @override
  @JsonKey(name: 'top_p')
  final double? topP;
  @override
  final int? n;
  @override
  final bool? stream;
  @override
  @JsonKey(name: 'logprobs')
  final int? logProbs;
  @override
  final bool? echo;
  final List<String>? _stop;
  @override
  List<String>? get stop {
    final value = _stop;
    if (value == null) return null;
    if (_stop is EqualUnmodifiableListView) return _stop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'presence_penalty')
  final double? presencePenalty;
  @override
  @JsonKey(name: 'frequency_penalty')
  final double? frequencyPenalty;
  @override
  @JsonKey(name: 'best_of')
  final int? bestOf;
  final Map<String, dynamic>? _logitBias;
  @override
  @JsonKey(name: 'logit_bias')
  Map<String, dynamic>? get logitBias {
    final value = _logitBias;
    if (value == null) return null;
    if (_logitBias is EqualUnmodifiableMapView) return _logitBias;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? user;

  @override
  String toString() {
    return 'OpenAICompletionRequestBody(prompt: $prompt, model: $model, suffix: $suffix, maxTokens: $maxTokens, temperature: $temperature, topP: $topP, n: $n, stream: $stream, logProbs: $logProbs, echo: $echo, stop: $stop, presencePenalty: $presencePenalty, frequencyPenalty: $frequencyPenalty, bestOf: $bestOf, logitBias: $logitBias, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAICompletionRequestBody &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.topP, topP) || other.topP == topP) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.logProbs, logProbs) ||
                other.logProbs == logProbs) &&
            (identical(other.echo, echo) || other.echo == echo) &&
            const DeepCollectionEquality().equals(other._stop, _stop) &&
            (identical(other.presencePenalty, presencePenalty) ||
                other.presencePenalty == presencePenalty) &&
            (identical(other.frequencyPenalty, frequencyPenalty) ||
                other.frequencyPenalty == frequencyPenalty) &&
            (identical(other.bestOf, bestOf) || other.bestOf == bestOf) &&
            const DeepCollectionEquality()
                .equals(other._logitBias, _logitBias) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      prompt,
      model,
      suffix,
      maxTokens,
      temperature,
      topP,
      n,
      stream,
      logProbs,
      echo,
      const DeepCollectionEquality().hash(_stop),
      presencePenalty,
      frequencyPenalty,
      bestOf,
      const DeepCollectionEquality().hash(_logitBias),
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAICompletionRequestBodyCopyWith<_$_OpenAICompletionRequestBody>
      get copyWith => __$$_OpenAICompletionRequestBodyCopyWithImpl<
          _$_OpenAICompletionRequestBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenAICompletionRequestBodyToJson(
      this,
    );
  }
}

abstract class _OpenAICompletionRequestBody
    implements OpenAICompletionRequestBody {
  const factory _OpenAICompletionRequestBody(
      {required final String prompt,
      final String? model,
      final String? suffix,
      @JsonKey(name: 'max_tokens') final int? maxTokens,
      final double? temperature,
      @JsonKey(name: 'top_p') final double? topP,
      final int? n,
      final bool? stream,
      @JsonKey(name: 'logprobs') final int? logProbs,
      final bool? echo,
      final List<String>? stop,
      @JsonKey(name: 'presence_penalty') final double? presencePenalty,
      @JsonKey(name: 'frequency_penalty') final double? frequencyPenalty,
      @JsonKey(name: 'best_of') final int? bestOf,
      @JsonKey(name: 'logit_bias') final Map<String, dynamic>? logitBias,
      final String? user}) = _$_OpenAICompletionRequestBody;

  factory _OpenAICompletionRequestBody.fromJson(Map<String, dynamic> json) =
      _$_OpenAICompletionRequestBody.fromJson;

  @override
  String get prompt;
  @override
  String? get model;
  @override
  String? get suffix;
  @override
  @JsonKey(name: 'max_tokens')
  int? get maxTokens;
  @override
  double? get temperature;
  @override
  @JsonKey(name: 'top_p')
  double? get topP;
  @override
  int? get n;
  @override
  bool? get stream;
  @override
  @JsonKey(name: 'logprobs')
  int? get logProbs;
  @override
  bool? get echo;
  @override
  List<String>? get stop;
  @override
  @JsonKey(name: 'presence_penalty')
  double? get presencePenalty;
  @override
  @JsonKey(name: 'frequency_penalty')
  double? get frequencyPenalty;
  @override
  @JsonKey(name: 'best_of')
  int? get bestOf;
  @override
  @JsonKey(name: 'logit_bias')
  Map<String, dynamic>? get logitBias;
  @override
  String? get user;
  @override
  @JsonKey(ignore: true)
  _$$_OpenAICompletionRequestBodyCopyWith<_$_OpenAICompletionRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}
