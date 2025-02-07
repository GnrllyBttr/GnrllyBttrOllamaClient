// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'embed_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmbedRequest _$EmbedRequestFromJson(Map<String, dynamic> json) {
  return _EmbedRequest.fromJson(json);
}

/// @nodoc
mixin _$EmbedRequest {
  /// The name of the model to use.
  String get model => throw _privateConstructorUsedError;

  /// The input data for generating embeddings.
  Object get input => throw _privateConstructorUsedError;

  /// Whether to truncate the input data.
  @JsonKey(includeIfNull: false)
  bool? get truncate => throw _privateConstructorUsedError;

  /// Configuration options for the model.
  @JsonKey(includeIfNull: false)
  ModelOptions? get options => throw _privateConstructorUsedError;

  /// Keep-alive duration for the request.
  @JsonKey(name: 'keep_alive', includeIfNull: false)
  String? get keepAlive => throw _privateConstructorUsedError;

  /// Serializes this EmbedRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmbedRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbedRequestCopyWith<EmbedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedRequestCopyWith<$Res> {
  factory $EmbedRequestCopyWith(
          EmbedRequest value, $Res Function(EmbedRequest) then) =
      _$EmbedRequestCopyWithImpl<$Res, EmbedRequest>;
  @useResult
  $Res call(
      {String model,
      Object input,
      @JsonKey(includeIfNull: false) bool? truncate,
      @JsonKey(includeIfNull: false) ModelOptions? options,
      @JsonKey(name: 'keep_alive', includeIfNull: false) String? keepAlive});

  $ModelOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class _$EmbedRequestCopyWithImpl<$Res, $Val extends EmbedRequest>
    implements $EmbedRequestCopyWith<$Res> {
  _$EmbedRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmbedRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? input = null,
    Object? truncate = freezed,
    Object? options = freezed,
    Object? keepAlive = freezed,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      input: null == input ? _value.input : input,
      truncate: freezed == truncate
          ? _value.truncate
          : truncate // ignore: cast_nullable_to_non_nullable
              as bool?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ModelOptions?,
      keepAlive: freezed == keepAlive
          ? _value.keepAlive
          : keepAlive // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of EmbedRequest
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
abstract class _$$EmbedRequestImplCopyWith<$Res>
    implements $EmbedRequestCopyWith<$Res> {
  factory _$$EmbedRequestImplCopyWith(
          _$EmbedRequestImpl value, $Res Function(_$EmbedRequestImpl) then) =
      __$$EmbedRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      Object input,
      @JsonKey(includeIfNull: false) bool? truncate,
      @JsonKey(includeIfNull: false) ModelOptions? options,
      @JsonKey(name: 'keep_alive', includeIfNull: false) String? keepAlive});

  @override
  $ModelOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class __$$EmbedRequestImplCopyWithImpl<$Res>
    extends _$EmbedRequestCopyWithImpl<$Res, _$EmbedRequestImpl>
    implements _$$EmbedRequestImplCopyWith<$Res> {
  __$$EmbedRequestImplCopyWithImpl(
      _$EmbedRequestImpl _value, $Res Function(_$EmbedRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmbedRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? input = null,
    Object? truncate = freezed,
    Object? options = freezed,
    Object? keepAlive = freezed,
  }) {
    return _then(_$EmbedRequestImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      input: null == input ? _value.input : input,
      truncate: freezed == truncate
          ? _value.truncate
          : truncate // ignore: cast_nullable_to_non_nullable
              as bool?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as ModelOptions?,
      keepAlive: freezed == keepAlive
          ? _value.keepAlive
          : keepAlive // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbedRequestImpl implements _EmbedRequest {
  const _$EmbedRequestImpl(
      {required this.model,
      required this.input,
      @JsonKey(includeIfNull: false) this.truncate,
      @JsonKey(includeIfNull: false) this.options,
      @JsonKey(name: 'keep_alive', includeIfNull: false) this.keepAlive});

  factory _$EmbedRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbedRequestImplFromJson(json);

  /// The name of the model to use.
  @override
  final String model;

  /// The input data for generating embeddings.
  @override
  final Object input;

  /// Whether to truncate the input data.
  @override
  @JsonKey(includeIfNull: false)
  final bool? truncate;

  /// Configuration options for the model.
  @override
  @JsonKey(includeIfNull: false)
  final ModelOptions? options;

  /// Keep-alive duration for the request.
  @override
  @JsonKey(name: 'keep_alive', includeIfNull: false)
  final String? keepAlive;

  @override
  String toString() {
    return 'EmbedRequest(model: $model, input: $input, truncate: $truncate, options: $options, keepAlive: $keepAlive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbedRequestImpl &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other.input, input) &&
            (identical(other.truncate, truncate) ||
                other.truncate == truncate) &&
            (identical(other.options, options) || other.options == options) &&
            (identical(other.keepAlive, keepAlive) ||
                other.keepAlive == keepAlive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model,
      const DeepCollectionEquality().hash(input), truncate, options, keepAlive);

  /// Create a copy of EmbedRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbedRequestImplCopyWith<_$EmbedRequestImpl> get copyWith =>
      __$$EmbedRequestImplCopyWithImpl<_$EmbedRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbedRequestImplToJson(
      this,
    );
  }
}

abstract class _EmbedRequest implements EmbedRequest {
  const factory _EmbedRequest(
      {required final String model,
      required final Object input,
      @JsonKey(includeIfNull: false) final bool? truncate,
      @JsonKey(includeIfNull: false) final ModelOptions? options,
      @JsonKey(name: 'keep_alive', includeIfNull: false)
      final String? keepAlive}) = _$EmbedRequestImpl;

  factory _EmbedRequest.fromJson(Map<String, dynamic> json) =
      _$EmbedRequestImpl.fromJson;

  /// The name of the model to use.
  @override
  String get model;

  /// The input data for generating embeddings.
  @override
  Object get input;

  /// Whether to truncate the input data.
  @override
  @JsonKey(includeIfNull: false)
  bool? get truncate;

  /// Configuration options for the model.
  @override
  @JsonKey(includeIfNull: false)
  ModelOptions? get options;

  /// Keep-alive duration for the request.
  @override
  @JsonKey(name: 'keep_alive', includeIfNull: false)
  String? get keepAlive;

  /// Create a copy of EmbedRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbedRequestImplCopyWith<_$EmbedRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
