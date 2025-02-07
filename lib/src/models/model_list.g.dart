// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelListImpl _$$ModelListImplFromJson(Map<String, dynamic> json) =>
    _$ModelListImpl(
      models: (json['models'] as List<dynamic>)
          .map((e) => Model.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ModelListImplToJson(_$ModelListImpl instance) =>
    <String, dynamic>{
      'models': instance.models.map((e) => e.toJson()).toList(),
    };
