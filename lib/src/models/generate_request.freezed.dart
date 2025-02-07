// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerateRequest _$GenerateRequestFromJson(Map<String, dynamic> json) {
  return _GenerateRequest.fromJson(json);
}

/// @nodoc
mixin _$GenerateRequest {
  /// The name of the model to use.
  String get model => throw _privateConstructorUsedError;

  /// The input prompt for text generation.
  String get prompt => throw _privateConstructorUsedError;

  /// A suffix to append to the generated text.
  @JsonKey(includeIfNull: false)
  String? get suffix => throw _privateConstructorUsedError;

  /// A list of base64-encoded images to include in the prompt (for multimodal models).
  @JsonKey(includeIfNull: false)
  List<String>? get images => throw _privateConstructorUsedError;

  /// The format of the output (json or a JSON schema).
  @JsonKey(includeIfNull: false)
  dynamic get format => throw _privateConstructorUsedError;

  /// Configuration options for the model.
  @JsonKey(includeIfNull: false)
  ModelOptions? get options => throw _privateConstructorUsedError;

  /// A system message to include in the prompt (overrides what is defined in the Modelfile).
  @JsonKey(includeIfNull: false)
  String? get system => throw _privateConstructorUsedError;

  /// A template for the prompt (overrides what is defined in the Modelfile).
  @JsonKey(includeIfNull: false)
  String? get template => throw _privateConstructorUsedError;

  /// Whether to stream the response. If false, the response will be returned as a single response object.
  @JsonKey(includeIfNull: false)
  bool? get stream => throw _privateConstructorUsedError;

  /// Whether to return raw output. If true, no formatting will be applied to the prompt.
  @JsonKey(includeIfNull: false)
  bool? get raw => throw _privateConstructorUsedError;

  /// Keep-alive duration for the request (default: 5m).
  @JsonKey(name: 'keep_alive', includeIfNull: false)
  String? get keepAlive => throw _privateConstructorUsedError;

  /// A list of context tokens (deprecated).
  @JsonKey(includeIfNull: false)
  List<int>? get context => throw _privateConstructorUsedError;

  /// Serializes this GenerateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenerateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerateRequestCopyWith<GenerateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateRequestCopyWith<$Res> {
  factory $GenerateRequestCopyWith(
          GenerateRequest value, $Res Function(GenerateRequest) then) =
      _$GenerateRequestCopyWithImpl<$Res, GenerateRequest>;
  @useResult
  $Res call(
      {String model,
      String prompt,
      @JsonKey(includeIfNull: false) String? suffix,
      @JsonKey(includeIfNull: false) List<String>? images,
      @JsonKey(includeIfNull: false) dynamic format,
      @JsonKey(includeIfNull: false) ModelOptions? options,
      @JsonKey(includeIfNull: false) String? system,
      @JsonKey(includeIfNull: false) String? template,
      @JsonKey(includeIfNull: false) bool? stream,
      @JsonKey(includeIfNull: false) bool? raw,
      @JsonKey(name: 'keep_alive', includeIfNull: false) String? keepAlive,
      @JsonKey(includeIfNull: false) List<int>? context});

  $ModelOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class _$GenerateRequestCopyWithImpl<$Res, $Val extends GenerateRequest>
    implements $GenerateRequestCopyWith<$Res> {
  _$GenerateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? prompt = null,
    Object? suffix = freezed,
    Object? images = freezed,
    Object? format = freezed,
    Object? options = freezed,
    Object? system = freezed,
    Object? template = freezed,
    Object? stream = freezed,
    Object? raw = freezed,
    Object? keepAlive = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as dynamic,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ModelOptions?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as bool?,
      keepAlive: freezed == keepAlive
          ? _value.keepAlive
          : keepAlive // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }

  /// Create a copy of GenerateRequest
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
abstract class _$$GenerateRequestImplCopyWith<$Res>
    implements $GenerateRequestCopyWith<$Res> {
  factory _$$GenerateRequestImplCopyWith(_$GenerateRequestImpl value,
          $Res Function(_$GenerateRequestImpl) then) =
      __$$GenerateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      String prompt,
      @JsonKey(includeIfNull: false) String? suffix,
      @JsonKey(includeIfNull: false) List<String>? images,
      @JsonKey(includeIfNull: false) dynamic format,
      @JsonKey(includeIfNull: false) ModelOptions? options,
      @JsonKey(includeIfNull: false) String? system,
      @JsonKey(includeIfNull: false) String? template,
      @JsonKey(includeIfNull: false) bool? stream,
      @JsonKey(includeIfNull: false) bool? raw,
      @JsonKey(name: 'keep_alive', includeIfNull: false) String? keepAlive,
      @JsonKey(includeIfNull: false) List<int>? context});

  @override
  $ModelOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class __$$GenerateRequestImplCopyWithImpl<$Res>
    extends _$GenerateRequestCopyWithImpl<$Res, _$GenerateRequestImpl>
    implements _$$GenerateRequestImplCopyWith<$Res> {
  __$$GenerateRequestImplCopyWithImpl(
      _$GenerateRequestImpl _value, $Res Function(_$GenerateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? prompt = null,
    Object? suffix = freezed,
    Object? images = freezed,
    Object? format = freezed,
    Object? options = freezed,
    Object? system = freezed,
    Object? template = freezed,
    Object? stream = freezed,
    Object? raw = freezed,
    Object? keepAlive = freezed,
    Object? context = freezed,
  }) {
    return _then(_$GenerateRequestImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as dynamic,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ModelOptions?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as bool?,
      keepAlive: freezed == keepAlive
          ? _value.keepAlive
          : keepAlive // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value._context
          : context // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateRequestImpl implements _GenerateRequest {
  const _$GenerateRequestImpl(
      {required this.model,
      required this.prompt,
      @JsonKey(includeIfNull: false) this.suffix,
      @JsonKey(includeIfNull: false) final List<String>? images,
      @JsonKey(includeIfNull: false) this.format,
      @JsonKey(includeIfNull: false) this.options,
      @JsonKey(includeIfNull: false) this.system,
      @JsonKey(includeIfNull: false) this.template,
      @JsonKey(includeIfNull: false) this.stream,
      @JsonKey(includeIfNull: false) this.raw,
      @JsonKey(name: 'keep_alive', includeIfNull: false) this.keepAlive,
      @JsonKey(includeIfNull: false) final List<int>? context})
      : _images = images,
        _context = context;

  factory _$GenerateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerateRequestImplFromJson(json);

  /// The name of the model to use.
  @override
  final String model;

  /// The input prompt for text generation.
  @override
  final String prompt;

  /// A suffix to append to the generated text.
  @override
  @JsonKey(includeIfNull: false)
  final String? suffix;

  /// A list of base64-encoded images to include in the prompt (for multimodal models).
  final List<String>? _images;

  /// A list of base64-encoded images to include in the prompt (for multimodal models).
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
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

  /// A system message to include in the prompt (overrides what is defined in the Modelfile).
  @override
  @JsonKey(includeIfNull: false)
  final String? system;

  /// A template for the prompt (overrides what is defined in the Modelfile).
  @override
  @JsonKey(includeIfNull: false)
  final String? template;

  /// Whether to stream the response. If false, the response will be returned as a single response object.
  @override
  @JsonKey(includeIfNull: false)
  final bool? stream;

  /// Whether to return raw output. If true, no formatting will be applied to the prompt.
  @override
  @JsonKey(includeIfNull: false)
  final bool? raw;

  /// Keep-alive duration for the request (default: 5m).
  @override
  @JsonKey(name: 'keep_alive', includeIfNull: false)
  final String? keepAlive;

  /// A list of context tokens (deprecated).
  final List<int>? _context;

  /// A list of context tokens (deprecated).
  @override
  @JsonKey(includeIfNull: false)
  List<int>? get context {
    final value = _context;
    if (value == null) return null;
    if (_context is EqualUnmodifiableListView) return _context;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GenerateRequest(model: $model, prompt: $prompt, suffix: $suffix, images: $images, format: $format, options: $options, system: $system, template: $template, stream: $stream, raw: $raw, keepAlive: $keepAlive, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateRequestImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            (identical(other.options, options) || other.options == options) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.template, template) ||
                other.template == template) &&
            (identical(other.stream, stream) || other.stream == stream) &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.keepAlive, keepAlive) ||
                other.keepAlive == keepAlive) &&
            const DeepCollectionEquality().equals(other._context, _context));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      model,
      prompt,
      suffix,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(format),
      options,
      system,
      template,
      stream,
      raw,
      keepAlive,
      const DeepCollectionEquality().hash(_context));

  /// Create a copy of GenerateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateRequestImplCopyWith<_$GenerateRequestImpl> get copyWith =>
      __$$GenerateRequestImplCopyWithImpl<_$GenerateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateRequestImplToJson(
      this,
    );
  }
}

abstract class _GenerateRequest implements GenerateRequest {
  const factory _GenerateRequest(
          {required final String model,
          required final String prompt,
          @JsonKey(includeIfNull: false) final String? suffix,
          @JsonKey(includeIfNull: false) final List<String>? images,
          @JsonKey(includeIfNull: false) final dynamic format,
          @JsonKey(includeIfNull: false) final ModelOptions? options,
          @JsonKey(includeIfNull: false) final String? system,
          @JsonKey(includeIfNull: false) final String? template,
          @JsonKey(includeIfNull: false) final bool? stream,
          @JsonKey(includeIfNull: false) final bool? raw,
          @JsonKey(name: 'keep_alive', includeIfNull: false)
          final String? keepAlive,
          @JsonKey(includeIfNull: false) final List<int>? context}) =
      _$GenerateRequestImpl;

  factory _GenerateRequest.fromJson(Map<String, dynamic> json) =
      _$GenerateRequestImpl.fromJson;

  /// The name of the model to use.
  @override
  String get model;

  /// The input prompt for text generation.
  @override
  String get prompt;

  /// A suffix to append to the generated text.
  @override
  @JsonKey(includeIfNull: false)
  String? get suffix;

  /// A list of base64-encoded images to include in the prompt (for multimodal models).
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get images;

  /// The format of the output (json or a JSON schema).
  @override
  @JsonKey(includeIfNull: false)
  dynamic get format;

  /// Configuration options for the model.
  @override
  @JsonKey(includeIfNull: false)
  ModelOptions? get options;

  /// A system message to include in the prompt (overrides what is defined in the Modelfile).
  @override
  @JsonKey(includeIfNull: false)
  String? get system;

  /// A template for the prompt (overrides what is defined in the Modelfile).
  @override
  @JsonKey(includeIfNull: false)
  String? get template;

  /// Whether to stream the response. If false, the response will be returned as a single response object.
  @override
  @JsonKey(includeIfNull: false)
  bool? get stream;

  /// Whether to return raw output. If true, no formatting will be applied to the prompt.
  @override
  @JsonKey(includeIfNull: false)
  bool? get raw;

  /// Keep-alive duration for the request (default: 5m).
  @override
  @JsonKey(name: 'keep_alive', includeIfNull: false)
  String? get keepAlive;

  /// A list of context tokens (deprecated).
  @override
  @JsonKey(includeIfNull: false)
  List<int>? get context;

  /// Create a copy of GenerateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateRequestImplCopyWith<_$GenerateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
