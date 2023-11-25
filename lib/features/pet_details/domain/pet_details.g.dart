// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetDetailsDataImpl _$$PetDetailsDataImplFromJson(Map<String, dynamic> json) =>
    _$PetDetailsDataImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String,
      breed: json['breed'] as String,
      birthday: json['birthday'] as String,
      age: json['age'] as String,
      weight: json['weight'] as String,
      height: json['height'] as String,
      chip: json['chip'] as String,
      registration: json['registration'] as String,
      image: json['image'] as String? ?? 'assets/images/homepagepic.png',
      ownerId: json['ownerId'] as String? ?? 'user-001',
      residence: json['residence'] as String,
      color: json['color'] as String,
      isExpanded: json['isExpanded'] as bool? ?? false,
    );

Map<String, dynamic> _$$PetDetailsDataImplToJson(
        _$PetDetailsDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'breed': instance.breed,
      'birthday': instance.birthday,
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
      'chip': instance.chip,
      'registration': instance.registration,
      'image': instance.image,
      'ownerId': instance.ownerId,
      'residence': instance.residence,
      'color': instance.color,
      'isExpanded': instance.isExpanded,
    };
