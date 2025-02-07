// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerateResponse _$GenerateResponseFromJson(Map<String, dynamic> json) {
  return _GenerateResponse.fromJson(json);
}

/// @nodoc
mixin _$GenerateResponse {
  /// The name of the model used.
  String get model => throw _privateConstructorUsedError;

  /// The timestamp when the response was created.
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// The generated text.
  String get response => throw _privateConstructorUsedError;

  /// Whether the generation is complete.
  bool get done => throw _privateConstructorUsedError;

  /// A list of context tokens.
  @JsonKey(includeIfNull: false)
  List<int>? get context => throw _privateConstructorUsedError;

  /// Total duration of the generation process.
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

  /// Serializes this GenerateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenerateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerateResponseCopyWith<GenerateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateResponseCopyWith<$Res> {
  factory $GenerateResponseCopyWith(
          GenerateResponse value, $Res Function(GenerateResponse) then) =
      _$GenerateResponseCopyWithImpl<$Res, GenerateResponse>;
  @useResult
  $Res call(
      {String model,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String response,
      bool done,
      @JsonKey(includeIfNull: false) List<int>? context,
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
class _$GenerateResponseCopyWithImpl<$Res, $Val extends GenerateResponse>
    implements $GenerateResponseCopyWith<$Res> {
  _$GenerateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? createdAt = null,
    Object? response = null,
    Object? done = null,
    Object? context = freezed,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as List<int>?,
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
abstract class _$$GenerateResponseImplCopyWith<$Res>
    implements $GenerateResponseCopyWith<$Res> {
  factory _$$GenerateResponseImplCopyWith(_$GenerateResponseImpl value,
          $Res Function(_$GenerateResponseImpl) then) =
      __$$GenerateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String response,
      bool done,
      @JsonKey(includeIfNull: false) List<int>? context,
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
class __$$GenerateResponseImplCopyWithImpl<$Res>
    extends _$GenerateResponseCopyWithImpl<$Res, _$GenerateResponseImpl>
    implements _$$GenerateResponseImplCopyWith<$Res> {
  __$$GenerateResponseImplCopyWithImpl(_$GenerateResponseImpl _value,
      $Res Function(_$GenerateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? createdAt = null,
    Object? response = null,
    Object? done = null,
    Object? context = freezed,
    Object? totalDuration = freezed,
    Object? loadDuration = freezed,
    Object? promptEvalCount = freezed,
    Object? promptEvalDuration = freezed,
    Object? evalCount = freezed,
    Object? evalDuration = freezed,
  }) {
    return _then(_$GenerateResponseImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      context: freezed == context
          ? _value._context
          : context // ignore: cast_nullable_to_non_nullable
              as List<int>?,
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
class _$GenerateResponseImpl implements _GenerateResponse {
  const _$GenerateResponseImpl(
      {required this.model,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.response,
      required this.done,
      @JsonKey(includeIfNull: false) final List<int>? context,
      @JsonKey(name: 'total_duration', includeIfNull: false) this.totalDuration,
      @JsonKey(name: 'load_duration', includeIfNull: false) this.loadDuration,
      @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
      this.promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
      this.promptEvalDuration,
      @JsonKey(name: 'eval_count', includeIfNull: false) this.evalCount,
      @JsonKey(name: 'eval_duration', includeIfNull: false) this.evalDuration})
      : _context = context;

  factory _$GenerateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerateResponseImplFromJson(json);

  /// The name of the model used.
  @override
  final String model;

  /// The timestamp when the response was created.
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The generated text.
  @override
  final String response;

  /// Whether the generation is complete.
  @override
  final bool done;

  /// A list of context tokens.
  final List<int>? _context;

  /// A list of context tokens.
  @override
  @JsonKey(includeIfNull: false)
  List<int>? get context {
    final value = _context;
    if (value == null) return null;
    if (_context is EqualUnmodifiableListView) return _context;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Total duration of the generation process.
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
    return 'GenerateResponse(model: $model, createdAt: $createdAt, response: $response, done: $done, context: $context, totalDuration: $totalDuration, loadDuration: $loadDuration, promptEvalCount: $promptEvalCount, promptEvalDuration: $promptEvalDuration, evalCount: $evalCount, evalDuration: $evalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateResponseImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.done, done) || other.done == done) &&
            const DeepCollectionEquality().equals(other._context, _context) &&
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
      createdAt,
      response,
      done,
      const DeepCollectionEquality().hash(_context),
      totalDuration,
      loadDuration,
      promptEvalCount,
      promptEvalDuration,
      evalCount,
      evalDuration);

  /// Create a copy of GenerateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateResponseImplCopyWith<_$GenerateResponseImpl> get copyWith =>
      __$$GenerateResponseImplCopyWithImpl<_$GenerateResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateResponseImplToJson(
      this,
    );
  }
}

abstract class _GenerateResponse implements GenerateResponse {
  const factory _GenerateResponse(
      {required final String model,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final String response,
      required final bool done,
      @JsonKey(includeIfNull: false) final List<int>? context,
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
      final int? evalDuration}) = _$GenerateResponseImpl;

  factory _GenerateResponse.fromJson(Map<String, dynamic> json) =
      _$GenerateResponseImpl.fromJson;

  /// The name of the model used.
  @override
  String get model;

  /// The timestamp when the response was created.
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// The generated text.
  @override
  String get response;

  /// Whether the generation is complete.
  @override
  bool get done;

  /// A list of context tokens.
  @override
  @JsonKey(includeIfNull: false)
  List<int>? get context;

  /// Total duration of the generation process.
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

  /// Create a copy of GenerateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateResponseImplCopyWith<_$GenerateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
