// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embed_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmbedRequestImpl _$$EmbedRequestImplFromJson(Map<String, dynamic> json) =>
    _$EmbedRequestImpl(
      model: json['model'] as String,
      input: json['input'] as Object,
      truncate: json['truncate'] as bool?,
      options: json['options'] == null
          ? null
          : ModelOptions.fromJson(json['options'] as Map<String, dynamic>),
      keepAlive: json['keep_alive'] as String?,
    );

Map<String, dynamic> _$$EmbedRequestImplToJson(_$EmbedRequestImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'input': instance.input,
      if (instance.truncate case final value?) 'truncate': value,
      if (instance.options?.toJson() case final value?) 'options': value,
      if (instance.keepAlive case final value?) 'keep_alive': value,
    };
