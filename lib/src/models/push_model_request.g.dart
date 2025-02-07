// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PushModelRequestImpl _$$PushModelRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PushModelRequestImpl(
      model: json['model'] as String,
      insecure: json['insecure'] as bool?,
      stream: json['stream'] as bool?,
    );

Map<String, dynamic> _$$PushModelRequestImplToJson(
        _$PushModelRequestImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      if (instance.insecure case final value?) 'insecure': value,
      if (instance.stream case final value?) 'stream': value,
    };
