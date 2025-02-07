// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) {
  return _ChatResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatResponse {
  /// The name of the model used.
  String get model => throw _privateConstructorUsedError;

  /// The timestamp when the response was created.
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// The generated message.
  ChatMessage get message => throw _privateConstructorUsedError;

  /// Whether the generation is complete.
  bool get done => throw _privateConstructorUsedError;

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

  /// Serializes this ChatResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatResponseCopyWith<ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatResponseCopyWith<$Res> {
  factory $ChatResponseCopyWith(
          ChatResponse value, $Res Function(ChatResponse) then) =
      _$ChatResponseCopyWithImpl<$Res, ChatResponse>;
  @useResult
  $Res call(
      {String model,
      @JsonKey(name: 'created_at') DateTime createdAt,
      ChatMessage message,
      bool done,
      @JsonKey(name: 'total_duration', includeIfNull: false) int? totalDuration,
      @JsonKey(name: 'load_duration', includeIfNull: false) int? loadDuration,
      @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
      int? promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
      int? promptEvalDuration,
      @JsonKey(name: 'eval_count', includeIfNull: false) int? evalCount,
      @JsonKey(name: 'eval_duration', includeIfNull: false) int? evalDuration});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ChatResponseCopyWithImpl<$Res, $Val extends ChatResponse>
    implements $ChatResponseCopyWith<$Res> {
  _$ChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? createdAt = null,
    Object? message = null,
    Object? done = null,
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
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

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatResponseImplCopyWith<$Res>
    implements $ChatResponseCopyWith<$Res> {
  factory _$$ChatResponseImplCopyWith(
          _$ChatResponseImpl value, $Res Function(_$ChatResponseImpl) then) =
      __$$ChatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      @JsonKey(name: 'created_at') DateTime createdAt,
      ChatMessage message,
      bool done,
      @JsonKey(name: 'total_duration', includeIfNull: false) int? totalDuration,
      @JsonKey(name: 'load_duration', includeIfNull: false) int? loadDuration,
      @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
      int? promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
      int? promptEvalDuration,
      @JsonKey(name: 'eval_count', includeIfNull: false) int? evalCount,
      @JsonKey(name: 'eval_duration', includeIfNull: false) int? evalDuration});

  @override
  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$ChatResponseImplCopyWithImpl<$Res>
    extends _$ChatResponseCopyWithImpl<$Res, _$ChatResponseImpl>
    implements _$$ChatResponseImplCopyWith<$Res> {
  __$$ChatResponseImplCopyWithImpl(
      _$ChatResponseImpl _value, $Res Function(_$ChatResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? createdAt = null,
    Object? message = null,
    Object? done = null,
    Object? totalDuration = freezed,
    Object? loadDuration = freezed,
    Object? promptEvalCount = freezed,
    Object? promptEvalDuration = freezed,
    Object? evalCount = freezed,
    Object? evalDuration = freezed,
  }) {
    return _then(_$ChatResponseImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$ChatResponseImpl implements _ChatResponse {
  const _$ChatResponseImpl(
      {required this.model,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.message,
      required this.done,
      @JsonKey(name: 'total_duration', includeIfNull: false) this.totalDuration,
      @JsonKey(name: 'load_duration', includeIfNull: false) this.loadDuration,
      @JsonKey(name: 'prompt_eval_count', includeIfNull: false)
      this.promptEvalCount,
      @JsonKey(name: 'prompt_eval_duration', includeIfNull: false)
      this.promptEvalDuration,
      @JsonKey(name: 'eval_count', includeIfNull: false) this.evalCount,
      @JsonKey(name: 'eval_duration', includeIfNull: false) this.evalDuration});

  factory _$ChatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatResponseImplFromJson(json);

  /// The name of the model used.
  @override
  final String model;

  /// The timestamp when the response was created.
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// The generated message.
  @override
  final ChatMessage message;

  /// Whether the generation is complete.
  @override
  final bool done;

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
    return 'ChatResponse(model: $model, createdAt: $createdAt, message: $message, done: $done, totalDuration: $totalDuration, loadDuration: $loadDuration, promptEvalCount: $promptEvalCount, promptEvalDuration: $promptEvalDuration, evalCount: $evalCount, evalDuration: $evalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatResponseImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.done, done) || other.done == done) &&
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
      message,
      done,
      totalDuration,
      loadDuration,
      promptEvalCount,
      promptEvalDuration,
      evalCount,
      evalDuration);

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      __$$ChatResponseImplCopyWithImpl<_$ChatResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatResponseImplToJson(
      this,
    );
  }
}

abstract class _ChatResponse implements ChatResponse {
  const factory _ChatResponse(
      {required final String model,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final ChatMessage message,
      required final bool done,
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
      final int? evalDuration}) = _$ChatResponseImpl;

  factory _ChatResponse.fromJson(Map<String, dynamic> json) =
      _$ChatResponseImpl.fromJson;

  /// The name of the model used.
  @override
  String get model;

  /// The timestamp when the response was created.
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// The generated message.
  @override
  ChatMessage get message;

  /// Whether the generation is complete.
  @override
  bool get done;

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

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
