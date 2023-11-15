import 'package:app/features/pet_details/domain/pet_details.dart';

class PetDetailsCollection {
  PetDetailsCollection(petDetails) : _petDetails = petDetails;

  final List<PetDetailsData> _petDetails;

  List<PetDetailsData> getAllPetDetails() {
    return _petDetails;
  }

  PetDetailsData getPetDetailsById(String id) {
    return _petDetails.firstWhere((element) => element.id == id);
  }

  List<String> getFeedingScheduleIDs() {
    return _petDetails.map((element) => element.id).toList();
  }

}
