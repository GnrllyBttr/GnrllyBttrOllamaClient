// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateResponseImpl _$$GenerateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateResponseImpl(
      model: json['model'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      response: json['response'] as String,
      done: json['done'] as bool,
      context: (json['context'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      totalDuration: (json['total_duration'] as num?)?.toInt(),
      loadDuration: (json['load_duration'] as num?)?.toInt(),
      promptEvalCount: (json['prompt_eval_count'] as num?)?.toInt(),
      promptEvalDuration: (json['prompt_eval_duration'] as num?)?.toInt(),
      evalCount: (json['eval_count'] as num?)?.toInt(),
      evalDuration: (json['eval_duration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GenerateResponseImplToJson(
        _$GenerateResponseImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'created_at': instance.createdAt.toIso8601String(),
      'response': instance.response,
      'done': instance.done,
      if (instance.context case final value?) 'context': value,
      if (instance.totalDuration case final value?) 'total_duration': value,
      if (instance.loadDuration case final value?) 'load_duration': value,
      if (instance.promptEvalCount case final value?)
        'prompt_eval_count': value,
      if (instance.promptEvalDuration case final value?)
        'prompt_eval_duration': value,
      if (instance.evalCount case final value?) 'eval_count': value,
      if (instance.evalDuration case final value?) 'eval_duration': value,
    };
