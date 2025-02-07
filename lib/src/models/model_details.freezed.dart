// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelDetails _$ModelDetailsFromJson(Map<String, dynamic> json) {
  return _ModelDetails.fromJson(json);
}

/// @nodoc
mixin _$ModelDetails {
  /// The format of the model.
  String get format => throw _privateConstructorUsedError;

  /// The family of the model.
  String get family => throw _privateConstructorUsedError;

  /// The families of the model.
  @JsonKey(includeIfNull: false)
  List<String>? get families => throw _privateConstructorUsedError;

  /// The size of the model's parameters.
  @JsonKey(name: 'parameter_size', includeIfNull: false)
  String? get parameterSize => throw _privateConstructorUsedError;

  /// The quantization level of the model.
  @JsonKey(name: 'quantization_level', includeIfNull: false)
  String? get quantizationLevel => throw _privateConstructorUsedError;

  /// Serializes this ModelDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelDetailsCopyWith<ModelDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelDetailsCopyWith<$Res> {
  factory $ModelDetailsCopyWith(
          ModelDetails value, $Res Function(ModelDetails) then) =
      _$ModelDetailsCopyWithImpl<$Res, ModelDetails>;
  @useResult
  $Res call(
      {String format,
      String family,
      @JsonKey(includeIfNull: false) List<String>? families,
      @JsonKey(name: 'parameter_size', includeIfNull: false)
      String? parameterSize,
      @JsonKey(name: 'quantization_level', includeIfNull: false)
      String? quantizationLevel});
}

/// @nodoc
class _$ModelDetailsCopyWithImpl<$Res, $Val extends ModelDetails>
    implements $ModelDetailsCopyWith<$Res> {
  _$ModelDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
    Object? family = null,
    Object? families = freezed,
    Object? parameterSize = freezed,
    Object? quantizationLevel = freezed,
  }) {
    return _then(_value.copyWith(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      families: freezed == families
          ? _value.families
          : families // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      parameterSize: freezed == parameterSize
          ? _value.parameterSize
          : parameterSize // ignore: cast_nullable_to_non_nullable
              as String?,
      quantizationLevel: freezed == quantizationLevel
          ? _value.quantizationLevel
          : quantizationLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelDetailsImplCopyWith<$Res>
    implements $ModelDetailsCopyWith<$Res> {
  factory _$$ModelDetailsImplCopyWith(
          _$ModelDetailsImpl value, $Res Function(_$ModelDetailsImpl) then) =
      __$$ModelDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String format,
      String family,
      @JsonKey(includeIfNull: false) List<String>? families,
      @JsonKey(name: 'parameter_size', includeIfNull: false)
      String? parameterSize,
      @JsonKey(name: 'quantization_level', includeIfNull: false)
      String? quantizationLevel});
}

/// @nodoc
class __$$ModelDetailsImplCopyWithImpl<$Res>
    extends _$ModelDetailsCopyWithImpl<$Res, _$ModelDetailsImpl>
    implements _$$ModelDetailsImplCopyWith<$Res> {
  __$$ModelDetailsImplCopyWithImpl(
      _$ModelDetailsImpl _value, $Res Function(_$ModelDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? format = null,
    Object? family = null,
    Object? families = freezed,
    Object? parameterSize = freezed,
    Object? quantizationLevel = freezed,
  }) {
    return _then(_$ModelDetailsImpl(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      families: freezed == families
          ? _value._families
          : families // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      parameterSize: freezed == parameterSize
          ? _value.parameterSize
          : parameterSize // ignore: cast_nullable_to_non_nullable
              as String?,
      quantizationLevel: freezed == quantizationLevel
          ? _value.quantizationLevel
          : quantizationLevel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelDetailsImpl implements _ModelDetails {
  const _$ModelDetailsImpl(
      {required this.format,
      required this.family,
      @JsonKey(includeIfNull: false) final List<String>? families,
      @JsonKey(name: 'parameter_size', includeIfNull: false) this.parameterSize,
      @JsonKey(name: 'quantization_level', includeIfNull: false)
      this.quantizationLevel})
      : _families = families;

  factory _$ModelDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelDetailsImplFromJson(json);

  /// The format of the model.
  @override
  final String format;

  /// The family of the model.
  @override
  final String family;

  /// The families of the model.
  final List<String>? _families;

  /// The families of the model.
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get families {
    final value = _families;
    if (value == null) return null;
    if (_families is EqualUnmodifiableListView) return _families;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The size of the model's parameters.
  @override
  @JsonKey(name: 'parameter_size', includeIfNull: false)
  final String? parameterSize;

  /// The quantization level of the model.
  @override
  @JsonKey(name: 'quantization_level', includeIfNull: false)
  final String? quantizationLevel;

  @override
  String toString() {
    return 'ModelDetails(format: $format, family: $family, families: $families, parameterSize: $parameterSize, quantizationLevel: $quantizationLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelDetailsImpl &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.family, family) || other.family == family) &&
            const DeepCollectionEquality().equals(other._families, _families) &&
            (identical(other.parameterSize, parameterSize) ||
                other.parameterSize == parameterSize) &&
            (identical(other.quantizationLevel, quantizationLevel) ||
                other.quantizationLevel == quantizationLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      format,
      family,
      const DeepCollectionEquality().hash(_families),
      parameterSize,
      quantizationLevel);

  /// Create a copy of ModelDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelDetailsImplCopyWith<_$ModelDetailsImpl> get copyWith =>
      __$$ModelDetailsImplCopyWithImpl<_$ModelDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelDetailsImplToJson(
      this,
    );
  }
}

abstract class _ModelDetails implements ModelDetails {
  const factory _ModelDetails(
      {required final String format,
      required final String family,
      @JsonKey(includeIfNull: false) final List<String>? families,
      @JsonKey(name: 'parameter_size', includeIfNull: false)
      final String? parameterSize,
      @JsonKey(name: 'quantization_level', includeIfNull: false)
      final String? quantizationLevel}) = _$ModelDetailsImpl;

  factory _ModelDetails.fromJson(Map<String, dynamic> json) =
      _$ModelDetailsImpl.fromJson;

  /// The format of the model.
  @override
  String get format;

  /// The family of the model.
  @override
  String get family;

  /// The families of the model.
  @override
  @JsonKey(includeIfNull: false)
  List<String>? get families;

  /// The size of the model's parameters.
  @override
  @JsonKey(name: 'parameter_size', includeIfNull: false)
  String? get parameterSize;

  /// The quantization level of the model.
  @override
  @JsonKey(name: 'quantization_level', includeIfNull: false)
  String? get quantizationLevel;

  /// Create a copy of ModelDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelDetailsImplCopyWith<_$ModelDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
