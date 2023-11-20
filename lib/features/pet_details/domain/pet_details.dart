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
    required String age,
    required String weight,
    required String chip,
    required String registration,
    required String residence,
    @Default(false) bool isExpanded
  }) = _PetDetailsData;

  factory PetDetailsData.fromJson(Map<String, dynamic> json) =>
      _$PetDetailsDataFromJson(json);
}