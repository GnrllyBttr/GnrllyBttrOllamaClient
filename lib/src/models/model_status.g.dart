// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelStatusImpl _$$ModelStatusImplFromJson(Map<String, dynamic> json) =>
    _$ModelStatusImpl(
      name: json['name'] as String,
      model: json['model'] as String,
      size: (json['size'] as num).toInt(),
      digest: json['digest'] as String,
      details: ModelDetails.fromJson(json['details'] as Map<String, dynamic>),
      expiresAt: DateTime.parse(json['expires_at'] as String),
      sizeVram: (json['size_vram'] as num).toInt(),
    );

Map<String, dynamic> _$$ModelStatusImplToJson(_$ModelStatusImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'model': instance.model,
      'size': instance.size,
      'digest': instance.digest,
      'details': instance.details.toJson(),
      'expires_at': instance.expiresAt.toIso8601String(),
      'size_vram': instance.sizeVram,
    };
