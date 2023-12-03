import 'package:freezed_annotation/freezed_annotation.dart';

part 'pet_activity.freezed.dart';
part 'pet_activity.g.dart';

@freezed
class PetActivity with _$PetActivity {
  factory PetActivity({
    required String id,
    required String petId,
    required String title,
    required String type,
    required String content,
    required String timestamp,
    required String date,
  }) = _PetActivity;

  const PetActivity._();

  factory PetActivity.fromJson(Map<String, dynamic> json) =>
      _$PetActivityFromJson(json);
}
