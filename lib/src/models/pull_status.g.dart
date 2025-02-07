// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pull_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PullStatusImpl _$$PullStatusImplFromJson(Map<String, dynamic> json) =>
    _$PullStatusImpl(
      status: json['status'] as String,
      digest: json['digest'] as String?,
      total: (json['total'] as num?)?.toInt(),
      completed: (json['completed'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PullStatusImplToJson(_$PullStatusImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.digest case final value?) 'digest': value,
      if (instance.total case final value?) 'total': value,
      if (instance.completed case final value?) 'completed': value,
    };
