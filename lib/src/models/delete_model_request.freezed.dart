// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_model_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteModelRequest _$DeleteModelRequestFromJson(Map<String, dynamic> json) {
  return _DeleteModelRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteModelRequest {
  /// The name of the model to delete.
  String get model => throw _privateConstructorUsedError;

  /// Serializes this DeleteModelRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteModelRequestCopyWith<DeleteModelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteModelRequestCopyWith<$Res> {
  factory $DeleteModelRequestCopyWith(
          DeleteModelRequest value, $Res Function(DeleteModelRequest) then) =
      _$DeleteModelRequestCopyWithImpl<$Res, DeleteModelRequest>;
  @useResult
  $Res call({String model});
}

/// @nodoc
class _$DeleteModelRequestCopyWithImpl<$Res, $Val extends DeleteModelRequest>
    implements $DeleteModelRequestCopyWith<$Res> {
  _$DeleteModelRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteModelRequestImplCopyWith<$Res>
    implements $DeleteModelRequestCopyWith<$Res> {
  factory _$$DeleteModelRequestImplCopyWith(_$DeleteModelRequestImpl value,
          $Res Function(_$DeleteModelRequestImpl) then) =
      __$$DeleteModelRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String model});
}

/// @nodoc
class __$$DeleteModelRequestImplCopyWithImpl<$Res>
    extends _$DeleteModelRequestCopyWithImpl<$Res, _$DeleteModelRequestImpl>
    implements _$$DeleteModelRequestImplCopyWith<$Res> {
  __$$DeleteModelRequestImplCopyWithImpl(_$DeleteModelRequestImpl _value,
      $Res Function(_$DeleteModelRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$DeleteModelRequestImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteModelRequestImpl implements _DeleteModelRequest {
  const _$DeleteModelRequestImpl({required this.model});

  factory _$DeleteModelRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteModelRequestImplFromJson(json);

  /// The name of the model to delete.
  @override
  final String model;

  @override
  String toString() {
    return 'DeleteModelRequest(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteModelRequestImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of DeleteModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteModelRequestImplCopyWith<_$DeleteModelRequestImpl> get copyWith =>
      __$$DeleteModelRequestImplCopyWithImpl<_$DeleteModelRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteModelRequestImplToJson(
      this,
    );
  }
}

abstract class _DeleteModelRequest implements DeleteModelRequest {
  const factory _DeleteModelRequest({required final String model}) =
      _$DeleteModelRequestImpl;

  factory _DeleteModelRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteModelRequestImpl.fromJson;

  /// The name of the model to delete.
  @override
  String get model;

  /// Create a copy of DeleteModelRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteModelRequestImplCopyWith<_$DeleteModelRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
