// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetDetailsDataImpl _$$PetDetailsDataImplFromJson(Map<String, dynamic> json) =>
    _$PetDetailsDataImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      breed: json['breed'] as String,
      birthday: json['birthday'] as String,
      age: json['age'] as int,
      weight: json['weight'] as String,
      chip: json['chip'] as int,
      registration: json['registration'] as int,
      residence: json['residence'] as String,
    );

Map<String, dynamic> _$$PetDetailsDataImplToJson(
        _$PetDetailsDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'breed': instance.breed,
      'birthday': instance.birthday,
      'age': instance.age,
      'weight': instance.weight,
      'chip': instance.chip,
      'registration': instance.registration,
      'residence': instance.residence,
    };
