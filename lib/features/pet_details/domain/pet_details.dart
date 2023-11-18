import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_details.freezed.dart';
part 'pet_details.g.dart';

@freezed
class PetDetailsData with _$PetDetailsData {
  factory PetDetailsData({
    required String id,
    required String name,
    required String breed,
    required String birthday,
    required int age,
    required String weight,
    required int chip,
    required int registration,
    required String residence,
    @Default(false) bool isExpanded
  }) = _PetDetailsData;

  factory PetDetailsData.fromJson(Map<String, dynamic> json) =>
      _$PetDetailsDataFromJson(json);
}