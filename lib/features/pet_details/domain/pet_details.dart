import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_details.freezed.dart';
part 'pet_details.g.dart';

@freezed
class PetDetailsData with _$PetDetailsData {
  factory PetDetailsData(
      {required String id,
      required String name,
      required String gender,
      required String breed,
      required String birthday,
      required String age,
      required String weight,
      required String height,
      required String chip,
      required String registration,
      @Default('assets/images/homepagepic.png') String image,
      @Default('user-001') String ownerId,
      required String residence,
      required String color,
      @Default(false) bool isExpanded}) = _PetDetailsData;

  factory PetDetailsData.fromJson(Map<String, dynamic> json) =>
      _$PetDetailsDataFromJson(json);
}
