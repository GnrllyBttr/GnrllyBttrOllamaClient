// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pull_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PullStatus _$PullStatusFromJson(Map<String, dynamic> json) {
  return _PullStatus.fromJson(json);
}

/// @nodoc
mixin _$PullStatus {
  /// The current status of the pull operation.
  String get status => throw _privateConstructorUsedError;

  /// The digest of the model being pulled.
  @JsonKey(includeIfNull: false)
  String? get digest => throw _privateConstructorUsedError;

  /// The total number of steps in the pull operation.
  @JsonKey(includeIfNull: false)
  int? get total => throw _privateConstructorUsedError;

  /// The number of steps completed in the pull operation.
  @JsonKey(includeIfNull: false)
  int? get completed => throw _privateConstructorUsedError;

  /// Serializes this PullStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PullStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PullStatusCopyWith<PullStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PullStatusCopyWith<$Res> {
  factory $PullStatusCopyWith(
          PullStatus value, $Res Function(PullStatus) then) =
      _$PullStatusCopyWithImpl<$Res, PullStatus>;
  @useResult
  $Res call(
      {String status,
      @JsonKey(includeIfNull: false) String? digest,
      @JsonKey(includeIfNull: false) int? total,
      @JsonKey(includeIfNull: false) int? completed});
}

/// @nodoc
class _$PullStatusCopyWithImpl<$Res, $Val extends PullStatus>
    implements $PullStatusCopyWith<$Res> {
  _$PullStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PullStatus
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
abstract class _$$PullStatusImplCopyWith<$Res>
    implements $PullStatusCopyWith<$Res> {
  factory _$$PullStatusImplCopyWith(
          _$PullStatusImpl value, $Res Function(_$PullStatusImpl) then) =
      __$$PullStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      @JsonKey(includeIfNull: false) String? digest,
      @JsonKey(includeIfNull: false) int? total,
      @JsonKey(includeIfNull: false) int? completed});
}

/// @nodoc
class __$$PullStatusImplCopyWithImpl<$Res>
    extends _$PullStatusCopyWithImpl<$Res, _$PullStatusImpl>
    implements _$$PullStatusImplCopyWith<$Res> {
  __$$PullStatusImplCopyWithImpl(
      _$PullStatusImpl _value, $Res Function(_$PullStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of PullStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? digest = freezed,
    Object? total = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$PullStatusImpl(
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
class _$PullStatusImpl implements _PullStatus {
  const _$PullStatusImpl(
      {required this.status,
      @JsonKey(includeIfNull: false) this.digest,
      @JsonKey(includeIfNull: false) this.total,
      @JsonKey(includeIfNull: false) this.completed});

  factory _$PullStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$PullStatusImplFromJson(json);

  /// The current status of the pull operation.
  @override
  final String status;

  /// The digest of the model being pulled.
  @override
  @JsonKey(includeIfNull: false)
  final String? digest;

  /// The total number of steps in the pull operation.
  @override
  @JsonKey(includeIfNull: false)
  final int? total;

  /// The number of steps completed in the pull operation.
  @override
  @JsonKey(includeIfNull: false)
  final int? completed;

  @override
  String toString() {
    return 'PullStatus(status: $status, digest: $digest, total: $total, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullStatusImpl &&
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

  /// Create a copy of PullStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PullStatusImplCopyWith<_$PullStatusImpl> get copyWith =>
      __$$PullStatusImplCopyWithImpl<_$PullStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PullStatusImplToJson(
      this,
    );
  }
}

abstract class _PullStatus implements PullStatus {
  const factory _PullStatus(
      {required final String status,
      @JsonKey(includeIfNull: false) final String? digest,
      @JsonKey(includeIfNull: false) final int? total,
      @JsonKey(includeIfNull: false) final int? completed}) = _$PullStatusImpl;

  factory _PullStatus.fromJson(Map<String, dynamic> json) =
      _$PullStatusImpl.fromJson;

  /// The current status of the pull operation.
  @override
  String get status;

  /// The digest of the model being pulled.
  @override
  @JsonKey(includeIfNull: false)
  String? get digest;

  /// The total number of steps in the pull operation.
  @override
  @JsonKey(includeIfNull: false)
  int? get total;

  /// The number of steps completed in the pull operation.
  @override
  @JsonKey(includeIfNull: false)
  int? get completed;

  /// Create a copy of PullStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PullStatusImplCopyWith<_$PullStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
