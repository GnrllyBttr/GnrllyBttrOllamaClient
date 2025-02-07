// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateModelRequestImpl _$$CreateModelRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateModelRequestImpl(
      model: json['model'] as String,
      from: json['from'] as String?,
      files: (json['files'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      adapters: (json['adapters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      template: json['template'] as String?,
      license: json['license'] as String?,
      system: json['system'] as String?,
      parameters: json['parameters'] as Map<String, dynamic>?,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      stream: json['stream'] as bool?,
      quantize: json['quantize'] as String?,
    );

Map<String, dynamic> _$$CreateModelRequestImplToJson(
        _$CreateModelRequestImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      if (instance.from case final value?) 'from': value,
      if (instance.files case final value?) 'files': value,
      if (instance.adapters case final value?) 'adapters': value,
      if (instance.template case final value?) 'template': value,
      if (instance.license case final value?) 'license': value,
      if (instance.system case final value?) 'system': value,
      if (instance.parameters case final value?) 'parameters': value,
      if (instance.messages?.map((e) => e.toJson()).toList() case final value?)
        'messages': value,
      if (instance.stream case final value?) 'stream': value,
      if (instance.quantize case final value?) 'quantize': value,
    };
