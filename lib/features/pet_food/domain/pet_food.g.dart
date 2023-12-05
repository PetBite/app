// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetFoodDataImpl _$$PetFoodDataImplFromJson(Map<String, dynamic> json) =>
    _$PetFoodDataImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      brand: json['brand'] as String,
      pros: (json['pros'] as List<dynamic>).map((e) => e as String).toList(),
      cons: (json['cons'] as List<dynamic>).map((e) => e as String).toList(),
      imagePath: json['imagePath'] as String? ?? 'assets/images/pedigree.jpg',
    );

Map<String, dynamic> _$$PetFoodDataImplToJson(_$PetFoodDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'brand': instance.brand,
      'pros': instance.pros,
      'cons': instance.cons,
      'imagePath': instance.imagePath,
    };
