// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'function_def.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FunctionDef _$FunctionDefFromJson(Map<String, dynamic> json) {
  return _FunctionDef.fromJson(json);
}

/// @nodoc
mixin _$FunctionDef {
  /// The name of the function.
  String get name => throw _privateConstructorUsedError;

  /// The description of the function.
  String get description => throw _privateConstructorUsedError;

  /// The parameters of the function.
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;

  /// Serializes this FunctionDef to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FunctionDef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FunctionDefCopyWith<FunctionDef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FunctionDefCopyWith<$Res> {
  factory $FunctionDefCopyWith(
          FunctionDef value, $Res Function(FunctionDef) then) =
      _$FunctionDefCopyWithImpl<$Res, FunctionDef>;
  @useResult
  $Res call({String name, String description, Map<String, dynamic> parameters});
}

/// @nodoc
class _$FunctionDefCopyWithImpl<$Res, $Val extends FunctionDef>
    implements $FunctionDefCopyWith<$Res> {
  _$FunctionDefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FunctionDef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? parameters = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FunctionDefImplCopyWith<$Res>
    implements $FunctionDefCopyWith<$Res> {
  factory _$$FunctionDefImplCopyWith(
          _$FunctionDefImpl value, $Res Function(_$FunctionDefImpl) then) =
      __$$FunctionDefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, Map<String, dynamic> parameters});
}

/// @nodoc
class __$$FunctionDefImplCopyWithImpl<$Res>
    extends _$FunctionDefCopyWithImpl<$Res, _$FunctionDefImpl>
    implements _$$FunctionDefImplCopyWith<$Res> {
  __$$FunctionDefImplCopyWithImpl(
      _$FunctionDefImpl _value, $Res Function(_$FunctionDefImpl) _then)
      : super(_value, _then);

  /// Create a copy of FunctionDef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? parameters = null,
  }) {
    return _then(_$FunctionDefImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FunctionDefImpl implements _FunctionDef {
  const _$FunctionDefImpl(
      {required this.name,
      required this.description,
      required final Map<String, dynamic> parameters})
      : _parameters = parameters;

  factory _$FunctionDefImpl.fromJson(Map<String, dynamic> json) =>
      _$$FunctionDefImplFromJson(json);

  /// The name of the function.
  @override
  final String name;

  /// The description of the function.
  @override
  final String description;

  /// The parameters of the function.
  final Map<String, dynamic> _parameters;

  /// The parameters of the function.
  @override
  Map<String, dynamic> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  @override
  String toString() {
    return 'FunctionDef(name: $name, description: $description, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FunctionDefImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description,
      const DeepCollectionEquality().hash(_parameters));

  /// Create a copy of FunctionDef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FunctionDefImplCopyWith<_$FunctionDefImpl> get copyWith =>
      __$$FunctionDefImplCopyWithImpl<_$FunctionDefImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FunctionDefImplToJson(
      this,
    );
  }
}

abstract class _FunctionDef implements FunctionDef {
  const factory _FunctionDef(
      {required final String name,
      required final String description,
      required final Map<String, dynamic> parameters}) = _$FunctionDefImpl;

  factory _FunctionDef.fromJson(Map<String, dynamic> json) =
      _$FunctionDefImpl.fromJson;

  /// The name of the function.
  @override
  String get name;

  /// The description of the function.
  @override
  String get description;

  /// The parameters of the function.
  @override
  Map<String, dynamic> get parameters;

  /// Create a copy of FunctionDef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FunctionDefImplCopyWith<_$FunctionDefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
