// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'embed_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmbedResponse _$EmbedResponseFromJson(Map<String, dynamic> json) {
  return _EmbedResponse.fromJson(json);
}

/// @nodoc
mixin _$EmbedResponse {
  /// The name of the model used.
  String get model => throw _privateConstructorUsedError;

  /// The generated embeddings.
  List<List<double>> get embeddings => throw _privateConstructorUsedError;

  /// Total duration of the embedding process.
  @JsonKey(name: 'total_duration', includeIfNull: false)
  int? get totalDuration => throw _privateConstructorUsedError;

  /// Duration spent loading the model.
  @JsonKey(name: 'load_duration', includeIfNull: false)
  int? get loadDuration => throw _privateConstructorUsedError;

  /// Number of tokens evaluated in the prompt.
  @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
  int? get promptEvalCount => throw _privateConstructorUsedError;

  /// Duration spent evaluating the prompt.
  @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
  int? get promptEvalDuration => throw _privateConstructorUsedError;

  /// Number of tokens evaluated during generation.
  @JsonKey(name: 'eval_count', includeIfNull: false)
  int? get evalCount => throw _privateConstructorUsedError;

  /// Duration spent evaluating tokens during generation.
  @JsonKey(name: 'eval_duration', includeIfNull: false)
  int? get evalDuration => throw _privateConstructorUsedError;

  /// Serializes this EmbedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmbedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbedResponseCopyWith<EmbedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedResponseCopyWith<$Res> {
  factory $EmbedResponseCopyWith(
          EmbedResponse value, $Res Function(EmbedResponse) then) =
      _$EmbedResponseCopyWithImpl<$Res, EmbedResponse>;
  @useResult
  $Res call(
      {String model,
      List<List<double>> embeddings,
      @JsonKey(name: 'total_duration', includeIfNull: false) int? totalDuration,
      @JsonKey(name: 'load_duration', includeIfNull: false) int? loadDuration,
      @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
      int? promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
      int? promptEvalDuration,
      @JsonKey(name: 'eval_count', includeIfNull: false) int? evalCount,
      @JsonKey(name: 'eval_duration', includeIfNull: false) int? evalDuration});
}

/// @nodoc
class _$EmbedResponseCopyWithImpl<$Res, $Val extends EmbedResponse>
    implements $EmbedResponseCopyWith<$Res> {
  _$EmbedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmbedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? embeddings = null,
    Object? totalDuration = freezed,
    Object? loadDuration = freezed,
    Object? promptEvalCount = freezed,
    Object? promptEvalDuration = freezed,
    Object? evalCount = freezed,
    Object? evalDuration = freezed,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      embeddings: null == embeddings
          ? _value.embeddings
          : embeddings // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      loadDuration: freezed == loadDuration
          ? _value.loadDuration
          : loadDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalCount: freezed == promptEvalCount
          ? _value.promptEvalCount
          : promptEvalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalDuration: freezed == promptEvalDuration
          ? _value.promptEvalDuration
          : promptEvalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      evalCount: freezed == evalCount
          ? _value.evalCount
          : evalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      evalDuration: freezed == evalDuration
          ? _value.evalDuration
          : evalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmbedResponseImplCopyWith<$Res>
    implements $EmbedResponseCopyWith<$Res> {
  factory _$$EmbedResponseImplCopyWith(
          _$EmbedResponseImpl value, $Res Function(_$EmbedResponseImpl) then) =
      __$$EmbedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      List<List<double>> embeddings,
      @JsonKey(name: 'total_duration', includeIfNull: false) int? totalDuration,
      @JsonKey(name: 'load_duration', includeIfNull: false) int? loadDuration,
      @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
      int? promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
      int? promptEvalDuration,
      @JsonKey(name: 'eval_count', includeIfNull: false) int? evalCount,
      @JsonKey(name: 'eval_duration', includeIfNull: false) int? evalDuration});
}

/// @nodoc
class __$$EmbedResponseImplCopyWithImpl<$Res>
    extends _$EmbedResponseCopyWithImpl<$Res, _$EmbedResponseImpl>
    implements _$$EmbedResponseImplCopyWith<$Res> {
  __$$EmbedResponseImplCopyWithImpl(
      _$EmbedResponseImpl _value, $Res Function(_$EmbedResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmbedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? embeddings = null,
    Object? totalDuration = freezed,
    Object? loadDuration = freezed,
    Object? promptEvalCount = freezed,
    Object? promptEvalDuration = freezed,
    Object? evalCount = freezed,
    Object? evalDuration = freezed,
  }) {
    return _then(_$EmbedResponseImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      embeddings: null == embeddings
          ? _value._embeddings
          : embeddings // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      loadDuration: freezed == loadDuration
          ? _value.loadDuration
          : loadDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalCount: freezed == promptEvalCount
          ? _value.promptEvalCount
          : promptEvalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      promptEvalDuration: freezed == promptEvalDuration
          ? _value.promptEvalDuration
          : promptEvalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      evalCount: freezed == evalCount
          ? _value.evalCount
          : evalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      evalDuration: freezed == evalDuration
          ? _value.evalDuration
          : evalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbedResponseImpl implements _EmbedResponse {
  const _$EmbedResponseImpl(
      {required this.model,
      required final List<List<double>> embeddings,
      @JsonKey(name: 'total_duration', includeIfNull: false) this.totalDuration,
      @JsonKey(name: 'load_duration', includeIfNull: false) this.loadDuration,
      @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
      this.promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
      this.promptEvalDuration,
      @JsonKey(name: 'eval_count', includeIfNull: false) this.evalCount,
      @JsonKey(name: 'eval_duration', includeIfNull: false) this.evalDuration})
      : _embeddings = embeddings;

  factory _$EmbedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbedResponseImplFromJson(json);

  /// The name of the model used.
  @override
  final String model;

  /// The generated embeddings.
  final List<List<double>> _embeddings;

  /// The generated embeddings.
  @override
  List<List<double>> get embeddings {
    if (_embeddings is EqualUnmodifiableListView) return _embeddings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_embeddings);
  }

  /// Total duration of the embedding process.
  @override
  @JsonKey(name: 'total_duration', includeIfNull: false)
  final int? totalDuration;

  /// Duration spent loading the model.
  @override
  @JsonKey(name: 'load_duration', includeIfNull: false)
  final int? loadDuration;

  /// Number of tokens evaluated in the prompt.
  @override
  @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
  final int? promptEvalCount;

  /// Duration spent evaluating the prompt.
  @override
  @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
  final int? promptEvalDuration;

  /// Number of tokens evaluated during generation.
  @override
  @JsonKey(name: 'eval_count', includeIfNull: false)
  final int? evalCount;

  /// Duration spent evaluating tokens during generation.
  @override
  @JsonKey(name: 'eval_duration', includeIfNull: false)
  final int? evalDuration;

  @override
  String toString() {
    return 'EmbedResponse(model: $model, embeddings: $embeddings, totalDuration: $totalDuration, loadDuration: $loadDuration, promptEvalCount: $promptEvalCount, promptEvalDuration: $promptEvalDuration, evalCount: $evalCount, evalDuration: $evalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbedResponseImpl &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality()
                .equals(other._embeddings, _embeddings) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            (identical(other.loadDuration, loadDuration) ||
                other.loadDuration == loadDuration) &&
            (identical(other.promptEvalCount, promptEvalCount) ||
                other.promptEvalCount == promptEvalCount) &&
            (identical(other.promptEvalDuration, promptEvalDuration) ||
                other.promptEvalDuration == promptEvalDuration) &&
            (identical(other.evalCount, evalCount) ||
                other.evalCount == evalCount) &&
            (identical(other.evalDuration, evalDuration) ||
                other.evalDuration == evalDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      const DeepCollectionEquality().hash(_embeddings),
      totalDuration,
      loadDuration,
      promptEvalCount,
      promptEvalDuration,
      evalCount,
      evalDuration);

  /// Create a copy of EmbedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbedResponseImplCopyWith<_$EmbedResponseImpl> get copyWith =>
      __$$EmbedResponseImplCopyWithImpl<_$EmbedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbedResponseImplToJson(
      this,
    );
  }
}

abstract class _EmbedResponse implements EmbedResponse {
  const factory _EmbedResponse(
      {required final String model,
      required final List<List<double>> embeddings,
      @JsonKey(name: 'total_duration', includeIfNull: false)
      final int? totalDuration,
      @JsonKey(name: 'load_duration', includeIfNull: false)
      final int? loadDuration,
      @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
      final int? promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
      final int? promptEvalDuration,
      @JsonKey(name: 'eval_count', includeIfNull: false) final int? evalCount,
      @JsonKey(name: 'eval_duration', includeIfNull: false)
      final int? evalDuration}) = _$EmbedResponseImpl;

  factory _EmbedResponse.fromJson(Map<String, dynamic> json) =
      _$EmbedResponseImpl.fromJson;

  /// The name of the model used.
  @override
  String get model;

  /// The generated embeddings.
  @override
  List<List<double>> get embeddings;

  /// Total duration of the embedding process.
  @override
  @JsonKey(name: 'total_duration', includeIfNull: false)
  int? get totalDuration;

  /// Duration spent loading the model.
  @override
  @JsonKey(name: 'load_duration', includeIfNull: false)
  int? get loadDuration;

  /// Number of tokens evaluated in the prompt.
  @override
  @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
  int? get promptEvalCount;

  /// Duration spent evaluating the prompt.
  @override
  @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
  int? get promptEvalDuration;

  /// Number of tokens evaluated during generation.
  @override
  @JsonKey(name: 'eval_count', includeIfNull: false)
  int? get evalCount;

  /// Duration spent evaluating tokens during generation.
  @override
  @JsonKey(name: 'eval_duration', includeIfNull: false)
  int? get evalDuration;

  /// Create a copy of EmbedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbedResponseImplCopyWith<_$EmbedResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
