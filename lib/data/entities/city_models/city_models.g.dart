// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityModelsImpl _$$CityModelsImplFromJson(Map<String, dynamic> json) =>
    _$CityModelsImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => CityData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CityModelsImplToJson(_$CityModelsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CityDataImpl _$$CityDataImplFromJson(Map<String, dynamic> json) =>
    _$CityDataImpl(
      name: json['name'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$CityDataImplToJson(_$CityDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
