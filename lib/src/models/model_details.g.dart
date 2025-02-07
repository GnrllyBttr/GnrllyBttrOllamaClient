// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelDetailsImpl _$$ModelDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ModelDetailsImpl(
      format: json['format'] as String,
      family: json['family'] as String,
      families: (json['families'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      parameterSize: json['parameter_size'] as String?,
      quantizationLevel: json['quantization_level'] as String?,
    );

Map<String, dynamic> _$$ModelDetailsImplToJson(_$ModelDetailsImpl instance) =>
    <String, dynamic>{
      'format': instance.format,
      'family': instance.family,
      if (instance.families case final value?) 'families': value,
      if (instance.parameterSize case final value?) 'parameter_size': value,
      if (instance.quantizationLevel case final value?)
        'quantization_level': value,
    };
