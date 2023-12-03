// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetActivityImpl _$$PetActivityImplFromJson(Map<String, dynamic> json) =>
    _$PetActivityImpl(
      id: json['id'] as String,
      petId: json['petId'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      content: json['content'] as String,
      timestamp: json['timestamp'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$PetActivityImplToJson(_$PetActivityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'petId': instance.petId,
      'title': instance.title,
      'type': instance.type,
      'content': instance.content,
      'timestamp': instance.timestamp,
      'date': instance.date,
    };
