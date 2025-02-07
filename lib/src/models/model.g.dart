// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelImpl _$$ModelImplFromJson(Map<String, dynamic> json) => _$ModelImpl(
      name: json['name'] as String,
      modifiedAt: DateTime.parse(json['modified_at'] as String),
      size: (json['size'] as num).toInt(),
      digest: json['digest'] as String,
      details: ModelDetails.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModelImplToJson(_$ModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'modified_at': instance.modifiedAt.toIso8601String(),
      'size': instance.size,
      'digest': instance.digest,
      'details': instance.details.toJson(),
    };
