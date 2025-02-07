// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatRequest _$ChatRequestFromJson(Map<String, dynamic> json) {
  return _ChatRequest.fromJson(json);
}

/// @nodoc
mixin _$ChatRequest {
  /// The name of the model to use.
  String get model => throw _privateConstructorUsedError;

  /// The list of messages in the chat conversation.
  List<ChatMessage> get messages => throw _privateConstructorUsedError;

  /// The list of tools available for the model to use.
  @JsonKey(includeIfNull: false)
  List<Tool>? get tools => throw _privateConstructorUsedError;

  /// The format of the output (json or a JSON schema).
  @JsonKey(includeIfNull: false)
  dynamic get format => throw _privateConstructorUsedError;

  /// Configuration options for the model.
  @JsonKey(includeIfNull: false)
  ModelOptions? get options => throw _privateConstructorUsedError;

  /// Whether to stream the response. If false, the response will be returned
  /// as a single response object.
  @JsonKey(includeIfNull: false)
  bool? get stream => throw _privateConstructorUsedError;

  /// Keep-alive duration for the request (default: 5m).
  @JsonKey(name: 'keep_alive', includeIfNull: false)
  String? get keepAlive => throw _privateConstructorUsedError;

  /// Serializes this ChatRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRequestCopyWith<ChatRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRequestCopyWith<$Res> {
  factory $ChatRequestCopyWith(
          ChatRequest value, $Res Function(ChatRequest) then) =
      _$ChatRequestCopyWithImpl<$Res, ChatRequest>;
  @useResult
  $Res call(
      {String model,
      List<ChatMessage> messages,
      @JsonKey(includeIfNull: false) List<Tool>? tools,
      @JsonKey(includeIfNull: false) dynamic format,
      @JsonKey(includeIfNull: false) ModelOptions? options,
      @JsonKey(includeIfNull: false) bool? stream,
      @JsonKey(name: 'keep_alive', includeIfNull: false) String? keepAlive});

  $ModelOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class _$ChatRequestCopyWithImpl<$Res, $Val extends ChatRequest>
    implements $ChatRequestCopyWith<$Res> {
  _$ChatRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
    Object? tools = freezed,
    Object? format = freezed,
    Object? options = freezed,
    Object? stream = freezed,
    Object? keepAlive = freezed,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      tools: freezed == tools
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tool>?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as dynamic,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ModelOptions?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      keepAlive: freezed == keepAlive
          ? _value.keepAlive
          : keepAlive // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModelOptionsCopyWith<$Res>? get options {
    if (_value.options == null) {
      return null;
    }

    return $ModelOptionsCopyWith<$Res>(_value.options!, (value) {
      return _then(_value.copyWith(options: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatRequestImplCopyWith<$Res>
    implements $ChatRequestCopyWith<$Res> {
  factory _$$ChatRequestImplCopyWith(
          _$ChatRequestImpl value, $Res Function(_$ChatRequestImpl) then) =
      __$$ChatRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      List<ChatMessage> messages,
      @JsonKey(includeIfNull: false) List<Tool>? tools,
      @JsonKey(includeIfNull: false) dynamic format,
      @JsonKey(includeIfNull: false) ModelOptions? options,
      @JsonKey(includeIfNull: false) bool? stream,
      @JsonKey(name: 'keep_alive', includeIfNull: false) String? keepAlive});

  @override
  $ModelOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class __$$ChatRequestImplCopyWithImpl<$Res>
    extends _$ChatRequestCopyWithImpl<$Res, _$ChatRequestImpl>
    implements _$$ChatRequestImplCopyWith<$Res> {
  __$$ChatRequestImplCopyWithImpl(
      _$ChatRequestImpl _value, $Res Function(_$ChatRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
    Object? tools = freezed,
    Object? format = freezed,
    Object? options = freezed,
    Object? stream = freezed,
    Object? keepAlive = freezed,
  }) {
    return _then(_$ChatRequestImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      tools: freezed == tools
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<Tool>?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as dynamic,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ModelOptions?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      keepAlive: freezed == keepAlive
          ? _value.keepAlive
          : keepAlive // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRequestImpl implements _ChatRequest {
  const _$ChatRequestImpl(
      {required this.model,
      required final List<ChatMessage> messages,
      @JsonKey(includeIfNull: false) final List<Tool>? tools,
      @JsonKey(includeIfNull: false) this.format,
      @JsonKey(includeIfNull: false) this.options,
      @JsonKey(includeIfNull: false) this.stream,
      @JsonKey(name: 'keep_alive', includeIfNull: false) this.keepAlive})
      : _messages = messages,
        _tools = tools;

  factory _$ChatRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRequestImplFromJson(json);

  /// The name of the model to use.
  @override
  final String model;

  /// The list of messages in the chat conversation.
  final List<ChatMessage> _messages;

  /// The list of messages in the chat conversation.
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  /// The list of tools available for the model to use.
  final List<Tool>? _tools;

  /// The list of tools available for the model to use.
  @override
  @JsonKey(includeIfNull: false)
  List<Tool>? get tools {
    final value = _tools;
    if (value == null) return null;
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The format of the output (json or a JSON schema).
  @override
  @JsonKey(includeIfNull: false)
  final dynamic format;

  /// Configuration options for the model.
  @override
  @JsonKey(includeIfNull: false)
  final ModelOptions? options;

  /// Whether to stream the response. If false, the response will be returned
  /// as a single response object.
  @override
  @JsonKey(includeIfNull: false)
  final bool? stream;

  /// Keep-alive duration for the request (default: 5m).
  @override
  @JsonKey(name: 'keep_alive', includeIfNull: false)
  final String? keepAlive;

  @override
  String toString() {
    return 'ChatRequest(model: $model, messages: $messages, tools: $tools, format: $format, options: $options, stream: $stream, keepAlive: $keepAlive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRequestImpl &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            (identical(other.options, options) || other.options == options) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.keepAlive, keepAlive) ||
                other.keepAlive == keepAlive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_tools),
      const DeepCollectionEquality().hash(format),
      options,
      stream,
      keepAlive);

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRequestImplCopyWith<_$ChatRequestImpl> get copyWith =>
      __$$ChatRequestImplCopyWithImpl<_$ChatRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRequestImplToJson(
      this,
    );
  }
}

abstract class _ChatRequest implements ChatRequest {
  const factory _ChatRequest(
      {required final String model,
      required final List<ChatMessage> messages,
      @JsonKey(includeIfNull: false) final List<Tool>? tools,
      @JsonKey(includeIfNull: false) final dynamic format,
      @JsonKey(includeIfNull: false) final ModelOptions? options,
      @JsonKey(includeIfNull: false) final bool? stream,
      @JsonKey(name: 'keep_alive', includeIfNull: false)
      final String? keepAlive}) = _$ChatRequestImpl;

  factory _ChatRequest.fromJson(Map<String, dynamic> json) =
      _$ChatRequestImpl.fromJson;

  /// The name of the model to use.
  @override
  String get model;

  /// The list of messages in the chat conversation.
  @override
  List<ChatMessage> get messages;

  /// The list of tools available for the model to use.
  @override
  @JsonKey(includeIfNull: false)
  List<Tool>? get tools;

  /// The format of the output (json or a JSON schema).
  @override
  @JsonKey(includeIfNull: false)
  dynamic get format;

  /// Configuration options for the model.
  @override
  @JsonKey(includeIfNull: false)
  ModelOptions? get options;

  /// Whether to stream the response. If false, the response will be returned
  /// as a single response object.
  @override
  @JsonKey(includeIfNull: false)
  bool? get stream;

  /// Keep-alive duration for the request (default: 5m).
  @override
  @JsonKey(name: 'keep_alive', includeIfNull: false)
  String? get keepAlive;

  /// Create a copy of ChatRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRequestImplCopyWith<_$ChatRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
