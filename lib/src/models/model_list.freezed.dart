// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelList _$ModelListFromJson(Map<String, dynamic> json) {
  return _ModelList.fromJson(json);
}

/// @nodoc
mixin _$ModelList {
  /// The list of models.
  List<Model> get models => throw _privateConstructorUsedError;

  /// Serializes this ModelList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelListCopyWith<ModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelListCopyWith<$Res> {
  factory $ModelListCopyWith(ModelList value, $Res Function(ModelList) then) =
      _$ModelListCopyWithImpl<$Res, ModelList>;
  @useResult
  $Res call({List<Model> models});
}

/// @nodoc
class _$ModelListCopyWithImpl<$Res, $Val extends ModelList>
    implements $ModelListCopyWith<$Res> {
  _$ModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelList
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
              as List<Model>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelListImplCopyWith<$Res>
    implements $ModelListCopyWith<$Res> {
  factory _$$ModelListImplCopyWith(
          _$ModelListImpl value, $Res Function(_$ModelListImpl) then) =
      __$$ModelListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Model> models});
}

/// @nodoc
class __$$ModelListImplCopyWithImpl<$Res>
    extends _$ModelListCopyWithImpl<$Res, _$ModelListImpl>
    implements _$$ModelListImplCopyWith<$Res> {
  __$$ModelListImplCopyWithImpl(
      _$ModelListImpl _value, $Res Function(_$ModelListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
  }) {
    return _then(_$ModelListImpl(
      models: null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<Model>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelListImpl implements _ModelList {
  const _$ModelListImpl({required final List<Model> models}) : _models = models;

  factory _$ModelListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelListImplFromJson(json);

  /// The list of models.
  final List<Model> _models;

  /// The list of models.
  @override
  List<Model> get models {
    if (_models is EqualUnmodifiableListView) return _models;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  String toString() {
    return 'ModelList(models: $models)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelListImpl &&
            const DeepCollectionEquality().equals(other._models, _models));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_models));

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelListImplCopyWith<_$ModelListImpl> get copyWith =>
      __$$ModelListImplCopyWithImpl<_$ModelListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelListImplToJson(
      this,
    );
  }
}

abstract class _ModelList implements ModelList {
  const factory _ModelList({required final List<Model> models}) =
      _$ModelListImpl;

  factory _ModelList.fromJson(Map<String, dynamic> json) =
      _$ModelListImpl.fromJson;

  /// The list of models.
  @override
  List<Model> get models;

  /// Create a copy of ModelList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelListImplCopyWith<_$ModelListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
