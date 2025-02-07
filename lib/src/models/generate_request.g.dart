// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateRequestImpl _$$GenerateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateRequestImpl(
      model: json['model'] as String,
      prompt: json['prompt'] as String,
      suffix: json['suffix'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      format: json['format'],
      options: json['options'] == null
          ? null
          : ModelOptions.fromJson(json['options'] as Map<String, dynamic>),
      system: json['system'] as String?,
      template: json['template'] as String?,
      stream: json['stream'] as bool?,
      raw: json['raw'] as bool?,
      keepAlive: json['keep_alive'] as String?,
      context: (json['context'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$GenerateRequestImplToJson(
        _$GenerateRequestImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'prompt': instance.prompt,
      if (instance.suffix case final value?) 'suffix': value,
      if (instance.images case final value?) 'images': value,
      if (instance.format case final value?) 'format': value,
      if (instance.options?.toJson() case final value?) 'options': value,
      if (instance.system case final value?) 'system': value,
      if (instance.template case final value?) 'template': value,
      if (instance.stream case final value?) 'stream': value,
      if (instance.raw case final value?) 'raw': value,
      if (instance.keepAlive case final value?) 'keep_alive': value,
      if (instance.context case final value?) 'context': value,
    };
