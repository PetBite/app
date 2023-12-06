import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories/firestore/firestore_path.dart';
import '../../../repositories/firestore/firestore_service.dart';
import '../domain/pet_food.dart';

/// Provides access to the Firestore database storing FeedingSchedule documents.
class PetFoodDatabase {
  PetFoodDatabase(this.ref);

  final ProviderRef<PetFoodDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<PetFoodData>> watchPetFoods() => _service.watchCollection(
      path: FirestorePath.petFoods(),
      builder: (data, documentId) => PetFoodData.fromJson(data!));

  Stream<PetFoodData> watchPetFood(String petFoodId) => _service.watchDocument(
      path: FirestorePath.petFood(petFoodId),
      builder: (data, documentId) => PetFoodData.fromJson(data!));

  Future<List<PetFoodData>> fetchPetFoods() => _service.fetchCollection(
      path: FirestorePath.petFoods(),
      builder: (data, documentId) => PetFoodData.fromJson(data!));

  Future<PetFoodData> fetchPetFood(String petFoodId) => _service.fetchDocument(
      path: FirestorePath.petFood(petFoodId),
      builder: (data, documentId) => PetFoodData.fromJson(data!));

  Future<void> setPetFood(PetFoodData food, String petFoodId) => _service
      .setData(path: FirestorePath.petFood(petFoodId), data: food.toJson());

  Future<void> deletePetFood(String petFoodId) =>
      _service.deleteData(path: FirestorePath.petFood(petFoodId));
}
