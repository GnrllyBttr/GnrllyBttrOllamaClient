// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelInfo _$ModelInfoFromJson(Map<String, dynamic> json) {
  return _ModelInfo.fromJson(json);
}

/// @nodoc
mixin _$ModelInfo {
  /// The modelfile of the model.
  String get modelfile => throw _privateConstructorUsedError;

  /// The parameters of the model.
  String get parameters => throw _privateConstructorUsedError;

  /// The template of the model.
  String get template => throw _privateConstructorUsedError;

  /// The details of the model.
  ModelDetails get details => throw _privateConstructorUsedError;

  /// Additional information about the model.
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get modelInfo => throw _privateConstructorUsedError;

  /// Serializes this ModelInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModelInfoCopyWith<ModelInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelInfoCopyWith<$Res> {
  factory $ModelInfoCopyWith(ModelInfo value, $Res Function(ModelInfo) then) =
      _$ModelInfoCopyWithImpl<$Res, ModelInfo>;
  @useResult
  $Res call(
      {String modelfile,
      String parameters,
      String template,
      ModelDetails details,
      @JsonKey(includeIfNull: false) Map<String, dynamic>? modelInfo});

  $ModelDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$ModelInfoCopyWithImpl<$Res, $Val extends ModelInfo>
    implements $ModelInfoCopyWith<$Res> {
  _$ModelInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelfile = null,
    Object? parameters = null,
    Object? template = null,
    Object? details = null,
    Object? modelInfo = freezed,
  }) {
    return _then(_value.copyWith(
      modelfile: null == modelfile
          ? _value.modelfile
          : modelfile // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as String,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ModelDetails,
      modelInfo: freezed == modelInfo
          ? _value.modelInfo
          : modelInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of ModelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModelDetailsCopyWith<$Res> get details {
    return $ModelDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModelInfoImplCopyWith<$Res>
    implements $ModelInfoCopyWith<$Res> {
  factory _$$ModelInfoImplCopyWith(
          _$ModelInfoImpl value, $Res Function(_$ModelInfoImpl) then) =
      __$$ModelInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String modelfile,
      String parameters,
      String template,
      ModelDetails details,
      @JsonKey(includeIfNull: false) Map<String, dynamic>? modelInfo});

  @override
  $ModelDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$ModelInfoImplCopyWithImpl<$Res>
    extends _$ModelInfoCopyWithImpl<$Res, _$ModelInfoImpl>
    implements _$$ModelInfoImplCopyWith<$Res> {
  __$$ModelInfoImplCopyWithImpl(
      _$ModelInfoImpl _value, $Res Function(_$ModelInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelfile = null,
    Object? parameters = null,
    Object? template = null,
    Object? details = null,
    Object? modelInfo = freezed,
  }) {
    return _then(_$ModelInfoImpl(
      modelfile: null == modelfile
          ? _value.modelfile
          : modelfile // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as String,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ModelDetails,
      modelInfo: freezed == modelInfo
          ? _value._modelInfo
          : modelInfo // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelInfoImpl implements _ModelInfo {
  const _$ModelInfoImpl(
      {required this.modelfile,
      required this.parameters,
      required this.template,
      required this.details,
      @JsonKey(includeIfNull: false) final Map<String, dynamic>? modelInfo})
      : _modelInfo = modelInfo;

  factory _$ModelInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelInfoImplFromJson(json);

  /// The modelfile of the model.
  @override
  final String modelfile;

  /// The parameters of the model.
  @override
  final String parameters;

  /// The template of the model.
  @override
  final String template;

  /// The details of the model.
  @override
  final ModelDetails details;

  /// Additional information about the model.
  final Map<String, dynamic>? _modelInfo;

  /// Additional information about the model.
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get modelInfo {
    final value = _modelInfo;
    if (value == null) return null;
    if (_modelInfo is EqualUnmodifiableMapView) return _modelInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ModelInfo(modelfile: $modelfile, parameters: $parameters, template: $template, details: $details, modelInfo: $modelInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelInfoImpl &&
            (identical(other.modelfile, modelfile) ||
                other.modelfile == modelfile) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            (identical(other.template, template) ||
                other.template == template) &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality()
                .equals(other._modelInfo, _modelInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, modelfile, parameters, template,
      details, const DeepCollectionEquality().hash(_modelInfo));

  /// Create a copy of ModelInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelInfoImplCopyWith<_$ModelInfoImpl> get copyWith =>
      __$$ModelInfoImplCopyWithImpl<_$ModelInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelInfoImplToJson(
      this,
    );
  }
}

abstract class _ModelInfo implements ModelInfo {
  const factory _ModelInfo(
      {required final String modelfile,
      required final String parameters,
      required final String template,
      required final ModelDetails details,
      @JsonKey(includeIfNull: false)
      final Map<String, dynamic>? modelInfo}) = _$ModelInfoImpl;

  factory _ModelInfo.fromJson(Map<String, dynamic> json) =
      _$ModelInfoImpl.fromJson;

  /// The modelfile of the model.
  @override
  String get modelfile;

  /// The parameters of the model.
  @override
  String get parameters;

  /// The template of the model.
  @override
  String get template;

  /// The details of the model.
  @override
  ModelDetails get details;

  /// Additional information about the model.
  @override
  @JsonKey(includeIfNull: false)
  Map<String, dynamic>? get modelInfo;

  /// Create a copy of ModelInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelInfoImplCopyWith<_$ModelInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
