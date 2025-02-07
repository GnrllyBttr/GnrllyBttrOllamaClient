// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelStatus _$ModelStatusFromJson(Map<String, dynamic> json) {
  return _ModelStatus.fromJson(json);
}

/// @nodoc
mixin _$ModelStatus {
  /// The name of the model.
  String get name => throw _privateConstructorUsedError;

  /// The name of the model (alias for `name`).
  String get model => throw _privateConstructorUsedError;

  /// The size of the model in bytes.
  int get size => throw _privateConstructorUsedError;

  /// The digest of the model.
  String get digest => throw _privateConstructorUsedError;

  /// The details of the model.
  ModelDetails get details => throw _privateConstructorUsedError;

  /// The expiration date of the model.
  @JsonKey(name: 'expires_at')
  DateTime get expiresAt => throw _privateConstructorUsedError;

  /// The size of the model in VRAM.
  @JsonKey(name: 'size_vram')
  int get sizeVram => throw _privateConstructorUsedError;

  /// Serializes this ModelStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelStatusCopyWith<ModelStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelStatusCopyWith<$Res> {
  factory $ModelStatusCopyWith(
          ModelStatus value, $Res Function(ModelStatus) then) =
      _$ModelStatusCopyWithImpl<$Res, ModelStatus>;
  @useResult
  $Res call(
      {String name,
      String model,
      int size,
      String digest,
      ModelDetails details,
      @JsonKey(name: 'expires_at') DateTime expiresAt,
      @JsonKey(name: 'size_vram') int sizeVram});

  $ModelDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$ModelStatusCopyWithImpl<$Res, $Val extends ModelStatus>
    implements $ModelStatusCopyWith<$Res> {
  _$ModelStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? model = null,
    Object? size = null,
    Object? digest = null,
    Object? details = null,
    Object? expiresAt = null,
    Object? sizeVram = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      digest: null == digest
          ? _value.digest
          : digest // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ModelDetails,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sizeVram: null == sizeVram
          ? _value.sizeVram
          : sizeVram // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ModelStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModelDetailsCopyWith<$Res> get details {
    return $ModelDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModelStatusImplCopyWith<$Res>
    implements $ModelStatusCopyWith<$Res> {
  factory _$$ModelStatusImplCopyWith(
          _$ModelStatusImpl value, $Res Function(_$ModelStatusImpl) then) =
      __$$ModelStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String model,
      int size,
      String digest,
      ModelDetails details,
      @JsonKey(name: 'expires_at') DateTime expiresAt,
      @JsonKey(name: 'size_vram') int sizeVram});

  @override
  $ModelDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$ModelStatusImplCopyWithImpl<$Res>
    extends _$ModelStatusCopyWithImpl<$Res, _$ModelStatusImpl>
    implements _$$ModelStatusImplCopyWith<$Res> {
  __$$ModelStatusImplCopyWithImpl(
      _$ModelStatusImpl _value, $Res Function(_$ModelStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? model = null,
    Object? size = null,
    Object? digest = null,
    Object? details = null,
    Object? expiresAt = null,
    Object? sizeVram = null,
  }) {
    return _then(_$ModelStatusImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      digest: null == digest
          ? _value.digest
          : digest // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ModelDetails,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sizeVram: null == sizeVram
          ? _value.sizeVram
          : sizeVram // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelStatusImpl implements _ModelStatus {
  const _$ModelStatusImpl(
      {required this.name,
      required this.model,
      required this.size,
      required this.digest,
      required this.details,
      @JsonKey(name: 'expires_at') required this.expiresAt,
      @JsonKey(name: 'size_vram') required this.sizeVram});

  factory _$ModelStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelStatusImplFromJson(json);

  /// The name of the model.
  @override
  final String name;

  /// The name of the model (alias for `name`).
  @override
  final String model;

  /// The size of the model in bytes.
  @override
  final int size;

  /// The digest of the model.
  @override
  final String digest;

  /// The details of the model.
  @override
  final ModelDetails details;

  /// The expiration date of the model.
  @override
  @JsonKey(name: 'expires_at')
  final DateTime expiresAt;

  /// The size of the model in VRAM.
  @override
  @JsonKey(name: 'size_vram')
  final int sizeVram;

  @override
  String toString() {
    return 'ModelStatus(name: $name, model: $model, size: $size, digest: $digest, details: $details, expiresAt: $expiresAt, sizeVram: $sizeVram)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelStatusImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.digest, digest) || other.digest == digest) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.sizeVram, sizeVram) ||
                other.sizeVram == sizeVram));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, model, size, digest, details, expiresAt, sizeVram);

  /// Create a copy of ModelStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelStatusImplCopyWith<_$ModelStatusImpl> get copyWith =>
      __$$ModelStatusImplCopyWithImpl<_$ModelStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelStatusImplToJson(
      this,
    );
  }
}

abstract class _ModelStatus implements ModelStatus {
  const factory _ModelStatus(
          {required final String name,
          required final String model,
          required final int size,
          required final String digest,
          required final ModelDetails details,
          @JsonKey(name: 'expires_at') required final DateTime expiresAt,
          @JsonKey(name: 'size_vram') required final int sizeVram}) =
      _$ModelStatusImpl;

  factory _ModelStatus.fromJson(Map<String, dynamic> json) =
      _$ModelStatusImpl.fromJson;

  /// The name of the model.
  @override
  String get name;

  /// The name of the model (alias for `name`).
  @override
  String get model;

  /// The size of the model in bytes.
  @override
  int get size;

  /// The digest of the model.
  @override
  String get digest;

  /// The details of the model.
  @override
  ModelDetails get details;

  /// The expiration date of the model.
  @override
  @JsonKey(name: 'expires_at')
  DateTime get expiresAt;

  /// The size of the model in VRAM.
  @override
  @JsonKey(name: 'size_vram')
  int get sizeVram;

  /// Create a copy of ModelStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelStatusImplCopyWith<_$ModelStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
