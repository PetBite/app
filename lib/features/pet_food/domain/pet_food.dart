import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_food.freezed.dart';
part 'pet_food.g.dart';

@freezed
class PetFoodData with _$PetFoodData {
  factory PetFoodData({
    required String id,
    required String name,
    required double price,
    required String brand,
    required List<String> pros,
    required List<String> cons,
    @Default('assets/images/pedigree.jpg') String imagePath,
  }) = _PetFoodData;

  factory PetFoodData.fromJson(Map<String, dynamic> json) =>
      _$PetFoodDataFromJson(json);
}
