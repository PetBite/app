import 'package:app/features/pet_food/domain/pet_food.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'pet_food_database.dart';

part 'pet_food_provider.g.dart';

@riverpod
PetFoodDatabase petFoodDatabase(PetFoodDatabaseRef ref) {
  return PetFoodDatabase(ref);
}

@riverpod
Stream<List<PetFoodData>> petFood(PetFoodRef ref) {
  final database = ref.watch(petFoodDatabaseProvider);
  return database.watchPetFoods();
}
