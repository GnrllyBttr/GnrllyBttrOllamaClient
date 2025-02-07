// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'copy_model_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CopyModelRequest _$CopyModelRequestFromJson(Map<String, dynamic> json) {
  return _CopyModelRequest.fromJson(json);
}

/// @nodoc
mixin _$CopyModelRequest {
  /// The source model to copy.
  String get source => throw _privateConstructorUsedError;

  /// The destination for the copied model.
  String get destination => throw _privateConstructorUsedError;

  /// Serializes this CopyModelRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CopyModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CopyModelRequestCopyWith<CopyModelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CopyModelRequestCopyWith<$Res> {
  factory $CopyModelRequestCopyWith(
          CopyModelRequest value, $Res Function(CopyModelRequest) then) =
      _$CopyModelRequestCopyWithImpl<$Res, CopyModelRequest>;
  @useResult
  $Res call({String source, String destination});
}

/// @nodoc
class _$CopyModelRequestCopyWithImpl<$Res, $Val extends CopyModelRequest>
    implements $CopyModelRequestCopyWith<$Res> {
  _$CopyModelRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CopyModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? destination = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CopyModelRequestImplCopyWith<$Res>
    implements $CopyModelRequestCopyWith<$Res> {
  factory _$$CopyModelRequestImplCopyWith(_$CopyModelRequestImpl value,
          $Res Function(_$CopyModelRequestImpl) then) =
      __$$CopyModelRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String source, String destination});
}

/// @nodoc
class __$$CopyModelRequestImplCopyWithImpl<$Res>
    extends _$CopyModelRequestCopyWithImpl<$Res, _$CopyModelRequestImpl>
    implements _$$CopyModelRequestImplCopyWith<$Res> {
  __$$CopyModelRequestImplCopyWithImpl(_$CopyModelRequestImpl _value,
      $Res Function(_$CopyModelRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CopyModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? destination = null,
  }) {
    return _then(_$CopyModelRequestImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CopyModelRequestImpl implements _CopyModelRequest {
  const _$CopyModelRequestImpl(
      {required this.source, required this.destination});

  factory _$CopyModelRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CopyModelRequestImplFromJson(json);

  /// The source model to copy.
  @override
  final String source;

  /// The destination for the copied model.
  @override
  final String destination;

  @override
  String toString() {
    return 'CopyModelRequest(source: $source, destination: $destination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyModelRequestImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, destination);

  /// Create a copy of CopyModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyModelRequestImplCopyWith<_$CopyModelRequestImpl> get copyWith =>
      __$$CopyModelRequestImplCopyWithImpl<_$CopyModelRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CopyModelRequestImplToJson(
      this,
    );
  }
}

abstract class _CopyModelRequest implements CopyModelRequest {
  const factory _CopyModelRequest(
      {required final String source,
      required final String destination}) = _$CopyModelRequestImpl;

  factory _CopyModelRequest.fromJson(Map<String, dynamic> json) =
      _$CopyModelRequestImpl.fromJson;

  /// The source model to copy.
  @override
  String get source;

  /// The destination for the copied model.
  @override
  String get destination;

  /// Create a copy of CopyModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyModelRequestImplCopyWith<_$CopyModelRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
