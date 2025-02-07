// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PushStatusImpl _$$PushStatusImplFromJson(Map<String, dynamic> json) =>
    _$PushStatusImpl(
      status: json['status'] as String?,
      digest: json['digest'] as String?,
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PushStatusImplToJson(_$PushStatusImpl instance) =>
    <String, dynamic>{
      if (instance.status case final value?) 'status': value,
      if (instance.digest case final value?) 'digest': value,
      if (instance.total case final value?) 'total': value,
    };
