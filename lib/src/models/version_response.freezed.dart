// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VersionResponse _$VersionResponseFromJson(Map<String, dynamic> json) {
  return _VersionResponse.fromJson(json);
}

/// @nodoc
mixin _$VersionResponse {
  /// The version of the API or service.
  String get version => throw _privateConstructorUsedError;

  /// Serializes this VersionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VersionResponseCopyWith<VersionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionResponseCopyWith<$Res> {
  factory $VersionResponseCopyWith(
          VersionResponse value, $Res Function(VersionResponse) then) =
      _$VersionResponseCopyWithImpl<$Res, VersionResponse>;
  @useResult
  $Res call({String version});
}

/// @nodoc
class _$VersionResponseCopyWithImpl<$Res, $Val extends VersionResponse>
    implements $VersionResponseCopyWith<$Res> {
  _$VersionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersionResponseImplCopyWith<$Res>
    implements $VersionResponseCopyWith<$Res> {
  factory _$$VersionResponseImplCopyWith(_$VersionResponseImpl value,
          $Res Function(_$VersionResponseImpl) then) =
      __$$VersionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version});
}

/// @nodoc
class __$$VersionResponseImplCopyWithImpl<$Res>
    extends _$VersionResponseCopyWithImpl<$Res, _$VersionResponseImpl>
    implements _$$VersionResponseImplCopyWith<$Res> {
  __$$VersionResponseImplCopyWithImpl(
      _$VersionResponseImpl _value, $Res Function(_$VersionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_$VersionResponseImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersionResponseImpl implements _VersionResponse {
  const _$VersionResponseImpl({required this.version});

  factory _$VersionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionResponseImplFromJson(json);

  /// The version of the API or service.
  @override
  final String version;

  @override
  String toString() {
    return 'VersionResponse(version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionResponseImpl &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version);

  /// Create a copy of VersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionResponseImplCopyWith<_$VersionResponseImpl> get copyWith =>
      __$$VersionResponseImplCopyWithImpl<_$VersionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionResponseImplToJson(
      this,
    );
  }
}

abstract class _VersionResponse implements VersionResponse {
  const factory _VersionResponse({required final String version}) =
      _$VersionResponseImpl;

  factory _VersionResponse.fromJson(Map<String, dynamic> json) =
      _$VersionResponseImpl.fromJson;

  /// The version of the API or service.
  @override
  String get version;

  /// Create a copy of VersionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VersionResponseImplCopyWith<_$VersionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
