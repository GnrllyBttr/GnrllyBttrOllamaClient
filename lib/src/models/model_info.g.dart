// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelInfoImpl _$$ModelInfoImplFromJson(Map<String, dynamic> json) =>
    _$ModelInfoImpl(
      modelfile: json['modelfile'] as String,
      parameters: json['parameters'] as String,
      template: json['template'] as String,
      details: ModelDetails.fromJson(json['details'] as Map<String, dynamic>),
      modelInfo: json['modelInfo'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ModelInfoImplToJson(_$ModelInfoImpl instance) =>
    <String, dynamic>{
      'modelfile': instance.modelfile,
      'parameters': instance.parameters,
      'template': instance.template,
      'details': instance.details.toJson(),
      if (instance.modelInfo case final value?) 'modelInfo': value,
    };
