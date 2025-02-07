// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PushStatus _$PushStatusFromJson(Map<String, dynamic> json) {
  return _PushStatus.fromJson(json);
}

/// @nodoc
mixin _$PushStatus {
  /// The current status of the push operation.
  @JsonKey(includeIfNull: false)
  String? get status => throw _privateConstructorUsedError;

  /// The digest of the model being pushed.
  @JsonKey(includeIfNull: false)
  String? get digest => throw _privateConstructorUsedError;

  /// The total number of steps in the push operation.
  @JsonKey(includeIfNull: false)
  int? get total => throw _privateConstructorUsedError;

  /// Serializes this PushStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PushStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PushStatusCopyWith<PushStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushStatusCopyWith<$Res> {
  factory $PushStatusCopyWith(
          PushStatus value, $Res Function(PushStatus) then) =
      _$PushStatusCopyWithImpl<$Res, PushStatus>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) String? digest,
      @JsonKey(includeIfNull: false) int? total});
}

/// @nodoc
class _$PushStatusCopyWithImpl<$Res, $Val extends PushStatus>
    implements $PushStatusCopyWith<$Res> {
  _$PushStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PushStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? digest = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      digest: freezed == digest
          ? _value.digest
          : digest // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushStatusImplCopyWith<$Res>
    implements $PushStatusCopyWith<$Res> {
  factory _$$PushStatusImplCopyWith(
          _$PushStatusImpl value, $Res Function(_$PushStatusImpl) then) =
      __$$PushStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? status,
      @JsonKey(includeIfNull: false) String? digest,
      @JsonKey(includeIfNull: false) int? total});
}

/// @nodoc
class __$$PushStatusImplCopyWithImpl<$Res>
    extends _$PushStatusCopyWithImpl<$Res, _$PushStatusImpl>
    implements _$$PushStatusImplCopyWith<$Res> {
  __$$PushStatusImplCopyWithImpl(
      _$PushStatusImpl _value, $Res Function(_$PushStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of PushStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? digest = freezed,
    Object? total = freezed,
  }) {
    return _then(_$PushStatusImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      digest: freezed == digest
          ? _value.digest
          : digest // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PushStatusImpl implements _PushStatus {
  const _$PushStatusImpl(
      {@JsonKey(includeIfNull: false) this.status,
      @JsonKey(includeIfNull: false) this.digest,
      @JsonKey(includeIfNull: false) this.total});

  factory _$PushStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushStatusImplFromJson(json);

  /// The current status of the push operation.
  @override
  @JsonKey(includeIfNull: false)
  final String? status;

  /// The digest of the model being pushed.
  @override
  @JsonKey(includeIfNull: false)
  final String? digest;

  /// The total number of steps in the push operation.
  @override
  @JsonKey(includeIfNull: false)
  final int? total;

  @override
  String toString() {
    return 'PushStatus(status: $status, digest: $digest, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushStatusImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.digest, digest) || other.digest == digest) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, digest, total);

  /// Create a copy of PushStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PushStatusImplCopyWith<_$PushStatusImpl> get copyWith =>
      __$$PushStatusImplCopyWithImpl<_$PushStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushStatusImplToJson(
      this,
    );
  }
}

abstract class _PushStatus implements PushStatus {
  const factory _PushStatus(
      {@JsonKey(includeIfNull: false) final String? status,
      @JsonKey(includeIfNull: false) final String? digest,
      @JsonKey(includeIfNull: false) final int? total}) = _$PushStatusImpl;

  factory _PushStatus.fromJson(Map<String, dynamic> json) =
      _$PushStatusImpl.fromJson;

  /// The current status of the push operation.
  @override
  @JsonKey(includeIfNull: false)
  String? get status;

  /// The digest of the model being pushed.
  @override
  @JsonKey(includeIfNull: false)
  String? get digest;

  /// The total number of steps in the push operation.
  @override
  @JsonKey(includeIfNull: false)
  int? get total;

  /// Create a copy of PushStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PushStatusImplCopyWith<_$PushStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
