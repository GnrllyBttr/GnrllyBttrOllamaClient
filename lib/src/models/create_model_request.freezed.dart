// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_model_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateModelRequest _$CreateModelRequestFromJson(Map<String, dynamic> json) {
  return _CreateModelRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateModelRequest {
  /// The name of the model to create.
  String get model => throw _privateConstructorUsedError;

  /// The base model to use for creation.
  @JsonKey(includeIfNull: false)
  String? get from => throw _privateConstructorUsedError;

  /// The files to include in the model.
  @JsonKey(includeIfNull: false)
  Map<String, String>? get files => throw _privateConstructorUsedError;

  /// The adapters to include in the model.
  @JsonKey(includeIfNull: false)
  Map<String, String>? get adapters => throw _privateConstructorUsedError;

  /// The template to use for the model.
  @JsonKey(includeIfNull: false)
  String? get template => throw _privateConstructorUsedError;

  /// The license for the model.
  @JsonKey(includeIfNull: false)
  String? get license => throw _privateConstructorUsedError;

  /// The system message to include in the model.
  @JsonKey(includeIfNull: false)
  String? get system => throw _privateConstructorUsedError;

  /// The parameters for the model.
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get parameters => throw _privateConstructorUsedError;

  /// The messages to include in the model.
  @JsonKey(includeIfNull: false)
  List<ChatMessage>? get messages => throw _privateConstructorUsedError;

  /// Whether to stream the response.
  @JsonKey(includeIfNull: false)
  bool? get stream => throw _privateConstructorUsedError;

  /// The quantization level for the model.
  @JsonKey(includeIfNull: false)
  String? get quantize => throw _privateConstructorUsedError;

  /// Serializes this CreateModelRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateModelRequestCopyWith<CreateModelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateModelRequestCopyWith<$Res> {
  factory $CreateModelRequestCopyWith(
          CreateModelRequest value, $Res Function(CreateModelRequest) then) =
      _$CreateModelRequestCopyWithImpl<$Res, CreateModelRequest>;
  @useResult
  $Res call(
      {String model,
      @JsonKey(includeIfNull: false) String? from,
      @JsonKey(includeIfNull: false) Map<String, String>? files,
      @JsonKey(includeIfNull: false) Map<String, String>? adapters,
      @JsonKey(includeIfNull: false) String? template,
      @JsonKey(includeIfNull: false) String? license,
      @JsonKey(includeIfNull: false) String? system,
      @JsonKey(includeIfNull: false) Map<String, dynamic>? parameters,
      @JsonKey(includeIfNull: false) List<ChatMessage>? messages,
      @JsonKey(includeIfNull: false) bool? stream,
      @JsonKey(includeIfNull: false) String? quantize});
}

/// @nodoc
class _$CreateModelRequestCopyWithImpl<$Res, $Val extends CreateModelRequest>
    implements $CreateModelRequestCopyWith<$Res> {
  _$CreateModelRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? from = freezed,
    Object? files = freezed,
    Object? adapters = freezed,
    Object? template = freezed,
    Object? license = freezed,
    Object? system = freezed,
    Object? parameters = freezed,
    Object? messages = freezed,
    Object? stream = freezed,
    Object? quantize = freezed,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      adapters: freezed == adapters
          ? _value.adapters
          : adapters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      quantize: freezed == quantize
          ? _value.quantize
          : quantize // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateModelRequestImplCopyWith<$Res>
    implements $CreateModelRequestCopyWith<$Res> {
  factory _$$CreateModelRequestImplCopyWith(_$CreateModelRequestImpl value,
          $Res Function(_$CreateModelRequestImpl) then) =
      __$$CreateModelRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      @JsonKey(includeIfNull: false) String? from,
      @JsonKey(includeIfNull: false) Map<String, String>? files,
      @JsonKey(includeIfNull: false) Map<String, String>? adapters,
      @JsonKey(includeIfNull: false) String? template,
      @JsonKey(includeIfNull: false) String? license,
      @JsonKey(includeIfNull: false) String? system,
      @JsonKey(includeIfNull: false) Map<String, dynamic>? parameters,
      @JsonKey(includeIfNull: false) List<ChatMessage>? messages,
      @JsonKey(includeIfNull: false) bool? stream,
      @JsonKey(includeIfNull: false) String? quantize});
}

/// @nodoc
class __$$CreateModelRequestImplCopyWithImpl<$Res>
    extends _$CreateModelRequestCopyWithImpl<$Res, _$CreateModelRequestImpl>
    implements _$$CreateModelRequestImplCopyWith<$Res> {
  __$$CreateModelRequestImplCopyWithImpl(_$CreateModelRequestImpl _value,
      $Res Function(_$CreateModelRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? from = freezed,
    Object? files = freezed,
    Object? adapters = freezed,
    Object? template = freezed,
    Object? license = freezed,
    Object? system = freezed,
    Object? parameters = freezed,
    Object? messages = freezed,
    Object? stream = freezed,
    Object? quantize = freezed,
  }) {
    return _then(_$CreateModelRequestImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      adapters: freezed == adapters
          ? _value._adapters
          : adapters // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: freezed == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      quantize: freezed == quantize
          ? _value.quantize
          : quantize // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateModelRequestImpl implements _CreateModelRequest {
  const _$CreateModelRequestImpl(
      {required this.model,
      @JsonKey(includeIfNull: false) this.from,
      @JsonKey(includeIfNull: false) final Map<String, String>? files,
      @JsonKey(includeIfNull: false) final Map<String, String>? adapters,
      @JsonKey(includeIfNull: false) this.template,
      @JsonKey(includeIfNull: false) this.license,
      @JsonKey(includeIfNull: false) this.system,
      @JsonKey(includeIfNull: false) final Map<String, dynamic>? parameters,
      @JsonKey(includeIfNull: false) final List<ChatMessage>? messages,
      @JsonKey(includeIfNull: false) this.stream,
      @JsonKey(includeIfNull: false) this.quantize})
      : _files = files,
        _adapters = adapters,
        _parameters = parameters,
        _messages = messages;

  factory _$CreateModelRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateModelRequestImplFromJson(json);

  /// The name of the model to create.
  @override
  final String model;

  /// The base model to use for creation.
  @override
  @JsonKey(includeIfNull: false)
  final String? from;

  /// The files to include in the model.
  final Map<String, String>? _files;

  /// The files to include in the model.
  @override
  @JsonKey(includeIfNull: false)
  Map<String, String>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableMapView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// The adapters to include in the model.
  final Map<String, String>? _adapters;

  /// The adapters to include in the model.
  @override
  @JsonKey(includeIfNull: false)
  Map<String, String>? get adapters {
    final value = _adapters;
    if (value == null) return null;
    if (_adapters is EqualUnmodifiableMapView) return _adapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// The template to use for the model.
  @override
  @JsonKey(includeIfNull: false)
  final String? template;

  /// The license for the model.
  @override
  @JsonKey(includeIfNull: false)
  final String? license;

  /// The system message to include in the model.
  @override
  @JsonKey(includeIfNull: false)
  final String? system;

  /// The parameters for the model.
  final Map<String, dynamic>? _parameters;

  /// The parameters for the model.
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// The messages to include in the model.
  final List<ChatMessage>? _messages;

  /// The messages to include in the model.
  @override
  @JsonKey(includeIfNull: false)
  List<ChatMessage>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Whether to stream the response.
  @override
  @JsonKey(includeIfNull: false)
  final bool? stream;

  /// The quantization level for the model.
  @override
  @JsonKey(includeIfNull: false)
  final String? quantize;

  @override
  String toString() {
    return 'CreateModelRequest(model: $model, from: $from, files: $files, adapters: $adapters, template: $template, license: $license, system: $system, parameters: $parameters, messages: $messages, stream: $stream, quantize: $quantize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateModelRequestImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.from, from) || other.from == from) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._adapters, _adapters) &&
            (identical(other.template, template) ||
                other.template == template) &&
            (identical(other.license, license) || other.license == license) &&
            (identical(other.system, system) || other.system == system) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.quantize, quantize) ||
                other.quantize == quantize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      from,
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(_adapters),
      template,
      license,
      system,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_messages),
      stream,
      quantize);

  /// Create a copy of CreateModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateModelRequestImplCopyWith<_$CreateModelRequestImpl> get copyWith =>
      __$$CreateModelRequestImplCopyWithImpl<_$CreateModelRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateModelRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateModelRequest implements CreateModelRequest {
  const factory _CreateModelRequest(
          {required final String model,
          @JsonKey(includeIfNull: false) final String? from,
          @JsonKey(includeIfNull: false) final Map<String, String>? files,
          @JsonKey(includeIfNull: false) final Map<String, String>? adapters,
          @JsonKey(includeIfNull: false) final String? template,
          @JsonKey(includeIfNull: false) final String? license,
          @JsonKey(includeIfNull: false) final String? system,
          @JsonKey(includeIfNull: false) final Map<String, dynamic>? parameters,
          @JsonKey(includeIfNull: false) final List<ChatMessage>? messages,
          @JsonKey(includeIfNull: false) final bool? stream,
          @JsonKey(includeIfNull: false) final String? quantize}) =
      _$CreateModelRequestImpl;

  factory _CreateModelRequest.fromJson(Map<String, dynamic> json) =
      _$CreateModelRequestImpl.fromJson;

  /// The name of the model to create.
  @override
  String get model;

  /// The base model to use for creation.
  @override
  @JsonKey(includeIfNull: false)
  String? get from;

  /// The files to include in the model.
  @override
  @JsonKey(includeIfNull: false)
  Map<String, String>? get files;

  /// The adapters to include in the model.
  @override
  @JsonKey(includeIfNull: false)
  Map<String, String>? get adapters;

  /// The template to use for the model.
  @override
  @JsonKey(includeIfNull: false)
  String? get template;

  /// The license for the model.
  @override
  @JsonKey(includeIfNull: false)
  String? get license;

  /// The system message to include in the model.
  @override
  @JsonKey(includeIfNull: false)
  String? get system;

  /// The parameters for the model.
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get parameters;

  /// The messages to include in the model.
  @override
  @JsonKey(includeIfNull: false)
  List<ChatMessage>? get messages;

  /// Whether to stream the response.
  @override
  @JsonKey(includeIfNull: false)
  bool? get stream;

  /// The quantization level for the model.
  @override
  @JsonKey(includeIfNull: false)
  String? get quantize;

  /// Create a copy of CreateModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateModelRequestImplCopyWith<_$CreateModelRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
