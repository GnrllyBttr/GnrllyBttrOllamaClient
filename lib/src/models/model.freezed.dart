// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Model _$ModelFromJson(Map<String, dynamic> json) {
  return _Model.fromJson(json);
}

/// @nodoc
mixin _$Model {
  /// The name of the model.
  String get name => throw _privateConstructorUsedError;

  /// The timestamp when the model was last modified.
  @JsonKey(name: 'modified_at')
  DateTime get modifiedAt => throw _privateConstructorUsedError;

  /// The size of the model in bytes.
  int get size => throw _privateConstructorUsedError;

  /// The digest of the model.
  String get digest => throw _privateConstructorUsedError;

  /// The details of the model.
  ModelDetails get details => throw _privateConstructorUsedError;

  /// Serializes this Model to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelCopyWith<Model> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelCopyWith<$Res> {
  factory $ModelCopyWith(Model value, $Res Function(Model) then) =
      _$ModelCopyWithImpl<$Res, Model>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'modified_at') DateTime modifiedAt,
      int size,
      String digest,
      ModelDetails details});

  $ModelDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$ModelCopyWithImpl<$Res, $Val extends Model>
    implements $ModelCopyWith<$Res> {
  _$ModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? modifiedAt = null,
    Object? size = null,
    Object? digest = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
    ) as $Val);
  }

  /// Create a copy of Model
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
abstract class _$$ModelImplCopyWith<$Res> implements $ModelCopyWith<$Res> {
  factory _$$ModelImplCopyWith(
          _$ModelImpl value, $Res Function(_$ModelImpl) then) =
      __$$ModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'modified_at') DateTime modifiedAt,
      int size,
      String digest,
      ModelDetails details});

  @override
  $ModelDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$ModelImplCopyWithImpl<$Res>
    extends _$ModelCopyWithImpl<$Res, _$ModelImpl>
    implements _$$ModelImplCopyWith<$Res> {
  __$$ModelImplCopyWithImpl(
      _$ModelImpl _value, $Res Function(_$ModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? modifiedAt = null,
    Object? size = null,
    Object? digest = null,
    Object? details = null,
  }) {
    return _then(_$ModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelImpl implements _Model {
  const _$ModelImpl(
      {required this.name,
      @JsonKey(name: 'modified_at') required this.modifiedAt,
      required this.size,
      required this.digest,
      required this.details});

  factory _$ModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelImplFromJson(json);

  /// The name of the model.
  @override
  final String name;

  /// The timestamp when the model was last modified.
  @override
  @JsonKey(name: 'modified_at')
  final DateTime modifiedAt;

  /// The size of the model in bytes.
  @override
  final int size;

  /// The digest of the model.
  @override
  final String digest;

  /// The details of the model.
  @override
  final ModelDetails details;

  @override
  String toString() {
    return 'Model(name: $name, modifiedAt: $modifiedAt, size: $size, digest: $digest, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.digest, digest) || other.digest == digest) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, modifiedAt, size, digest, details);

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelImplCopyWith<_$ModelImpl> get copyWith =>
      __$$ModelImplCopyWithImpl<_$ModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelImplToJson(
      this,
    );
  }
}

abstract class _Model implements Model {
  const factory _Model(
      {required final String name,
      @JsonKey(name: 'modified_at') required final DateTime modifiedAt,
      required final int size,
      required final String digest,
      required final ModelDetails details}) = _$ModelImpl;

  factory _Model.fromJson(Map<String, dynamic> json) = _$ModelImpl.fromJson;

  /// The name of the model.
  @override
  String get name;

  /// The timestamp when the model was last modified.
  @override
  @JsonKey(name: 'modified_at')
  DateTime get modifiedAt;

  /// The size of the model in bytes.
  @override
  int get size;

  /// The digest of the model.
  @override
  String get digest;

  /// The details of the model.
  @override
  ModelDetails get details;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelImplCopyWith<_$ModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
