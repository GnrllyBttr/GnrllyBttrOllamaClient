// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_status_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelStatusList _$ModelStatusListFromJson(Map<String, dynamic> json) {
  return _ModelStatusList.fromJson(json);
}

/// @nodoc
mixin _$ModelStatusList {
  /// The list of model statuses.
  List<ModelStatus> get models => throw _privateConstructorUsedError;

  /// Serializes this ModelStatusList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelStatusList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelStatusListCopyWith<ModelStatusList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelStatusListCopyWith<$Res> {
  factory $ModelStatusListCopyWith(
          ModelStatusList value, $Res Function(ModelStatusList) then) =
      _$ModelStatusListCopyWithImpl<$Res, ModelStatusList>;
  @useResult
  $Res call({List<ModelStatus> models});
}

/// @nodoc
class _$ModelStatusListCopyWithImpl<$Res, $Val extends ModelStatusList>
    implements $ModelStatusListCopyWith<$Res> {
  _$ModelStatusListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelStatusList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
  }) {
    return _then(_value.copyWith(
      models: null == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as List<ModelStatus>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelStatusListImplCopyWith<$Res>
    implements $ModelStatusListCopyWith<$Res> {
  factory _$$ModelStatusListImplCopyWith(_$ModelStatusListImpl value,
          $Res Function(_$ModelStatusListImpl) then) =
      __$$ModelStatusListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ModelStatus> models});
}

/// @nodoc
class __$$ModelStatusListImplCopyWithImpl<$Res>
    extends _$ModelStatusListCopyWithImpl<$Res, _$ModelStatusListImpl>
    implements _$$ModelStatusListImplCopyWith<$Res> {
  __$$ModelStatusListImplCopyWithImpl(
      _$ModelStatusListImpl _value, $Res Function(_$ModelStatusListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelStatusList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
  }) {
    return _then(_$ModelStatusListImpl(
      models: null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<ModelStatus>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelStatusListImpl implements _ModelStatusList {
  const _$ModelStatusListImpl({required final List<ModelStatus> models})
      : _models = models;

  factory _$ModelStatusListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelStatusListImplFromJson(json);

  /// The list of model statuses.
  final List<ModelStatus> _models;

  /// The list of model statuses.
  @override
  List<ModelStatus> get models {
    if (_models is EqualUnmodifiableListView) return _models;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  String toString() {
    return 'ModelStatusList(models: $models)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelStatusListImpl &&
            const DeepCollectionEquality().equals(other._models, _models));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_models));

  /// Create a copy of ModelStatusList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelStatusListImplCopyWith<_$ModelStatusListImpl> get copyWith =>
      __$$ModelStatusListImplCopyWithImpl<_$ModelStatusListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelStatusListImplToJson(
      this,
    );
  }
}

abstract class _ModelStatusList implements ModelStatusList {
  const factory _ModelStatusList({required final List<ModelStatus> models}) =
      _$ModelStatusListImpl;

  factory _ModelStatusList.fromJson(Map<String, dynamic> json) =
      _$ModelStatusListImpl.fromJson;

  /// The list of model statuses.
  @override
  List<ModelStatus> get models;

  /// Create a copy of ModelStatusList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelStatusListImplCopyWith<_$ModelStatusListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
