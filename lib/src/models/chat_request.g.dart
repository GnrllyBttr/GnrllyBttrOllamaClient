// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRequestImpl _$$ChatRequestImplFromJson(Map<String, dynamic> json) =>
    _$ChatRequestImpl(
      model: json['model'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      tools: (json['tools'] as List<dynamic>?)
          ?.map((e) => Tool.fromJson(e as Map<String, dynamic>))
          .toList(),
      format: json['format'],
      options: json['options'] == null
          ? null
          : ModelOptions.fromJson(json['options'] as Map<String, dynamic>),
      stream: json['stream'] as bool?,
      keepAlive: json['keep_alive'] as String?,
    );

Map<String, dynamic> _$$ChatRequestImplToJson(_$ChatRequestImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      if (instance.tools?.map((e) => e.toJson()).toList() case final value?)
        'tools': value,
      if (instance.format case final value?) 'format': value,
      if (instance.options?.toJson() case final value?) 'options': value,
      if (instance.stream case final value?) 'stream': value,
      if (instance.keepAlive case final value?) 'keep_alive': value,
    };
