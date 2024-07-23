// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelsImpl _$$UserModelsImplFromJson(Map<String, dynamic> json) =>
    _$UserModelsImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => UserData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserModelsImplToJson(_$UserModelsImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      name: json['name'] as String,
      address: json['address'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      city: json['city'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'city': instance.city,
      'id': instance.id,
    };
