// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pull_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PullModelRequestImpl _$$PullModelRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PullModelRequestImpl(
      model: json['model'] as String,
      insecure: json['insecure'] as bool?,
      stream: json['stream'] as bool?,
    );

Map<String, dynamic> _$$PullModelRequestImplToJson(
        _$PullModelRequestImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      if (instance.insecure case final value?) 'insecure': value,
      if (instance.stream case final value?) 'stream': value,
    };
