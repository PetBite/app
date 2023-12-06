import 'package:app/features/pet_food/domain/pet_food.dart';

class PetFoodCollection {
  PetFoodCollection(petFood) : _petFood = petFood;

  final List<PetFoodData> _petFood;

  List<PetFoodData> getAllPetFood() {
    return _petFood;
  }

  PetFoodData getPetFoodById(String id) {
    return _petFood.firstWhere((element) => element.id == id);
  }

  List<String> getPetFoodIDs() {
    return _petFood.map((element) => element.id).toList();
  }
}
