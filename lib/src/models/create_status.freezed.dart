// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateStatus _$CreateStatusFromJson(Map<String, dynamic> json) {
  return _CreateStatus.fromJson(json);
}

/// @nodoc
mixin _$CreateStatus {
  /// The current status of the creation process.
  String get status => throw _privateConstructorUsedError;

  /// The digest of the model being created.
  @JsonKey(includeIfNull: false)
  String? get digest => throw _privateConstructorUsedError;

  /// The total number of steps in the creation process.
  @JsonKey(includeIfNull: false)
  int? get total => throw _privateConstructorUsedError;

  /// The number of steps completed in the creation process.
  @JsonKey(includeIfNull: false)
  int? get completed => throw _privateConstructorUsedError;

  /// Serializes this CreateStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateStatusCopyWith<CreateStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStatusCopyWith<$Res> {
  factory $CreateStatusCopyWith(
          CreateStatus value, $Res Function(CreateStatus) then) =
      _$CreateStatusCopyWithImpl<$Res, CreateStatus>;
  @useResult
  $Res call(
      {String status,
      @JsonKey(includeIfNull: false) String? digest,
      @JsonKey(includeIfNull: false) int? total,
      @JsonKey(includeIfNull: false) int? completed});
}

/// @nodoc
class _$CreateStatusCopyWithImpl<$Res, $Val extends CreateStatus>
    implements $CreateStatusCopyWith<$Res> {
  _$CreateStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? digest = freezed,
    Object? total = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      digest: freezed == digest
          ? _value.digest
          : digest // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStatusImplCopyWith<$Res>
    implements $CreateStatusCopyWith<$Res> {
  factory _$$CreateStatusImplCopyWith(
          _$CreateStatusImpl value, $Res Function(_$CreateStatusImpl) then) =
      __$$CreateStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      @JsonKey(includeIfNull: false) String? digest,
      @JsonKey(includeIfNull: false) int? total,
      @JsonKey(includeIfNull: false) int? completed});
}

/// @nodoc
class __$$CreateStatusImplCopyWithImpl<$Res>
    extends _$CreateStatusCopyWithImpl<$Res, _$CreateStatusImpl>
    implements _$$CreateStatusImplCopyWith<$Res> {
  __$$CreateStatusImplCopyWithImpl(
      _$CreateStatusImpl _value, $Res Function(_$CreateStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? digest = freezed,
    Object? total = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$CreateStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      digest: freezed == digest
          ? _value.digest
          : digest // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStatusImpl implements _CreateStatus {
  const _$CreateStatusImpl(
      {required this.status,
      @JsonKey(includeIfNull: false) this.digest,
      @JsonKey(includeIfNull: false) this.total,
      @JsonKey(includeIfNull: false) this.completed});

  factory _$CreateStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStatusImplFromJson(json);

  /// The current status of the creation process.
  @override
  final String status;

  /// The digest of the model being created.
  @override
  @JsonKey(includeIfNull: false)
  final String? digest;

  /// The total number of steps in the creation process.
  @override
  @JsonKey(includeIfNull: false)
  final int? total;

  /// The number of steps completed in the creation process.
  @override
  @JsonKey(includeIfNull: false)
  final int? completed;

  @override
  String toString() {
    return 'CreateStatus(status: $status, digest: $digest, total: $total, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStatusImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.digest, digest) || other.digest == digest) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, digest, total, completed);

  /// Create a copy of CreateStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStatusImplCopyWith<_$CreateStatusImpl> get copyWith =>
      __$$CreateStatusImplCopyWithImpl<_$CreateStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStatusImplToJson(
      this,
    );
  }
}

abstract class _CreateStatus implements CreateStatus {
  const factory _CreateStatus(
          {required final String status,
          @JsonKey(includeIfNull: false) final String? digest,
          @JsonKey(includeIfNull: false) final int? total,
          @JsonKey(includeIfNull: false) final int? completed}) =
      _$CreateStatusImpl;

  factory _CreateStatus.fromJson(Map<String, dynamic> json) =
      _$CreateStatusImpl.fromJson;

  /// The current status of the creation process.
  @override
  String get status;

  /// The digest of the model being created.
  @override
  @JsonKey(includeIfNull: false)
  String? get digest;

  /// The total number of steps in the creation process.
  @override
  @JsonKey(includeIfNull: false)
  int? get total;

  /// The number of steps completed in the creation process.
  @override
  @JsonKey(includeIfNull: false)
  int? get completed;

  /// Create a copy of CreateStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateStatusImplCopyWith<_$CreateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
