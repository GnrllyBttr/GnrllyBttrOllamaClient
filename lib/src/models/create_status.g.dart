// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateStatusImpl _$$CreateStatusImplFromJson(Map<String, dynamic> json) =>
    _$CreateStatusImpl(
      status: json['status'] as String,
      digest: json['digest'] as String?,
      total: (json['total'] as num?)?.toInt(),
      completed: (json['completed'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CreateStatusImplToJson(_$CreateStatusImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.digest case final value?) 'digest': value,
      if (instance.total case final value?) 'total': value,
      if (instance.completed case final value?) 'completed': value,
    };
