// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pull_model_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PullModelRequest _$PullModelRequestFromJson(Map<String, dynamic> json) {
  return _PullModelRequest.fromJson(json);
}

/// @nodoc
mixin _$PullModelRequest {
  /// The name of the model to pull.
  String get model => throw _privateConstructorUsedError;

  /// Whether to use an insecure connection.
  @JsonKey(includeIfNull: false)
  bool? get insecure => throw _privateConstructorUsedError;

  /// Whether to stream the response.
  @JsonKey(includeIfNull: false)
  bool? get stream => throw _privateConstructorUsedError;

  /// Serializes this PullModelRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PullModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PullModelRequestCopyWith<PullModelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PullModelRequestCopyWith<$Res> {
  factory $PullModelRequestCopyWith(
          PullModelRequest value, $Res Function(PullModelRequest) then) =
      _$PullModelRequestCopyWithImpl<$Res, PullModelRequest>;
  @useResult
  $Res call(
      {String model,
      @JsonKey(includeIfNull: false) bool? insecure,
      @JsonKey(includeIfNull: false) bool? stream});
}

/// @nodoc
class _$PullModelRequestCopyWithImpl<$Res, $Val extends PullModelRequest>
    implements $PullModelRequestCopyWith<$Res> {
  _$PullModelRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PullModelRequest
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
abstract class _$$PullModelRequestImplCopyWith<$Res>
    implements $PullModelRequestCopyWith<$Res> {
  factory _$$PullModelRequestImplCopyWith(_$PullModelRequestImpl value,
          $Res Function(_$PullModelRequestImpl) then) =
      __$$PullModelRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      @JsonKey(includeIfNull: false) bool? insecure,
      @JsonKey(includeIfNull: false) bool? stream});
}

/// @nodoc
class __$$PullModelRequestImplCopyWithImpl<$Res>
    extends _$PullModelRequestCopyWithImpl<$Res, _$PullModelRequestImpl>
    implements _$$PullModelRequestImplCopyWith<$Res> {
  __$$PullModelRequestImplCopyWithImpl(_$PullModelRequestImpl _value,
      $Res Function(_$PullModelRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PullModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? insecure = freezed,
    Object? stream = freezed,
  }) {
    return _then(_$PullModelRequestImpl(
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
class _$PullModelRequestImpl implements _PullModelRequest {
  const _$PullModelRequestImpl(
      {required this.model,
      @JsonKey(includeIfNull: false) this.insecure,
      @JsonKey(includeIfNull: false) this.stream});

  factory _$PullModelRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PullModelRequestImplFromJson(json);

  /// The name of the model to pull.
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
    return 'PullModelRequest(model: $model, insecure: $insecure, stream: $stream)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullModelRequestImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.insecure, insecure) ||
                other.insecure == insecure) &&
            (identical(other.stream, stream) || other.stream == stream));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model, insecure, stream);

  /// Create a copy of PullModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PullModelRequestImplCopyWith<_$PullModelRequestImpl> get copyWith =>
      __$$PullModelRequestImplCopyWithImpl<_$PullModelRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PullModelRequestImplToJson(
      this,
    );
  }
}

abstract class _PullModelRequest implements PullModelRequest {
  const factory _PullModelRequest(
          {required final String model,
          @JsonKey(includeIfNull: false) final bool? insecure,
          @JsonKey(includeIfNull: false) final bool? stream}) =
      _$PullModelRequestImpl;

  factory _PullModelRequest.fromJson(Map<String, dynamic> json) =
      _$PullModelRequestImpl.fromJson;

  /// The name of the model to pull.
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

  /// Create a copy of PullModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PullModelRequestImplCopyWith<_$PullModelRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
