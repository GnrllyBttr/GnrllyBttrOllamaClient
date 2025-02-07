// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_model_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PushModelRequest _$PushModelRequestFromJson(Map<String, dynamic> json) {
  return _PushModelRequest.fromJson(json);
}

/// @nodoc
mixin _$PushModelRequest {
  /// The name of the model to push.
  String get model => throw _privateConstructorUsedError;

  /// Whether to use an insecure connection.
  @JsonKey(includeIfNull: false)
  bool? get insecure => throw _privateConstructorUsedError;

  /// Whether to stream the response.
  @JsonKey(includeIfNull: false)
  bool? get stream => throw _privateConstructorUsedError;

  /// Serializes this PushModelRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PushModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PushModelRequestCopyWith<PushModelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushModelRequestCopyWith<$Res> {
  factory $PushModelRequestCopyWith(
          PushModelRequest value, $Res Function(PushModelRequest) then) =
      _$PushModelRequestCopyWithImpl<$Res, PushModelRequest>;
  @useResult
  $Res call(
      {String model,
      @JsonKey(includeIfNull: false) bool? insecure,
      @JsonKey(includeIfNull: false) bool? stream});
}

/// @nodoc
class _$PushModelRequestCopyWithImpl<$Res, $Val extends PushModelRequest>
    implements $PushModelRequestCopyWith<$Res> {
  _$PushModelRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PushModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? insecure = freezed,
    Object? stream = freezed,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      insecure: freezed == insecure
          ? _value.insecure
          : insecure // ignore: cast_nullable_to_non_nullable
              as bool?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushModelRequestImplCopyWith<$Res>
    implements $PushModelRequestCopyWith<$Res> {
  factory _$$PushModelRequestImplCopyWith(_$PushModelRequestImpl value,
          $Res Function(_$PushModelRequestImpl) then) =
      __$$PushModelRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      @JsonKey(includeIfNull: false) bool? insecure,
      @JsonKey(includeIfNull: false) bool? stream});
}

/// @nodoc
class __$$PushModelRequestImplCopyWithImpl<$Res>
    extends _$PushModelRequestCopyWithImpl<$Res, _$PushModelRequestImpl>
    implements _$$PushModelRequestImplCopyWith<$Res> {
  __$$PushModelRequestImplCopyWithImpl(_$PushModelRequestImpl _value,
      $Res Function(_$PushModelRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PushModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? insecure = freezed,
    Object? stream = freezed,
  }) {
    return _then(_$PushModelRequestImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      insecure: freezed == insecure
          ? _value.insecure
          : insecure // ignore: cast_nullable_to_non_nullable
              as bool?,
      stream: freezed == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PushModelRequestImpl implements _PushModelRequest {
  const _$PushModelRequestImpl(
      {required this.model,
      @JsonKey(includeIfNull: false) this.insecure,
      @JsonKey(includeIfNull: false) this.stream});

  factory _$PushModelRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushModelRequestImplFromJson(json);

  /// The name of the model to push.
  @override
  final String model;

  /// Whether to use an insecure connection.
  @override
  @JsonKey(includeIfNull: false)
  final bool? insecure;

  /// Whether to stream the response.
  @override
  @JsonKey(includeIfNull: false)
  final bool? stream;

  @override
  String toString() {
    return 'PushModelRequest(model: $model, insecure: $insecure, stream: $stream)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushModelRequestImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.insecure, insecure) ||
                other.insecure == insecure) &&
            (identical(other.stream, stream) || other.stream == stream));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model, insecure, stream);

  /// Create a copy of PushModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PushModelRequestImplCopyWith<_$PushModelRequestImpl> get copyWith =>
      __$$PushModelRequestImplCopyWithImpl<_$PushModelRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushModelRequestImplToJson(
      this,
    );
  }
}

abstract class _PushModelRequest implements PushModelRequest {
  const factory _PushModelRequest(
          {required final String model,
          @JsonKey(includeIfNull: false) final bool? insecure,
          @JsonKey(includeIfNull: false) final bool? stream}) =
      _$PushModelRequestImpl;

  factory _PushModelRequest.fromJson(Map<String, dynamic> json) =
      _$PushModelRequestImpl.fromJson;

  /// The name of the model to push.
  @override
  String get model;

  /// Whether to use an insecure connection.
  @override
  @JsonKey(includeIfNull: false)
  bool? get insecure;

  /// Whether to stream the response.
  @override
  @JsonKey(includeIfNull: false)
  bool? get stream;

  /// Create a copy of PushModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PushModelRequestImplCopyWith<_$PushModelRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
