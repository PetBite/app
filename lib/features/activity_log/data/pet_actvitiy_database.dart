import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories/firestore/firestore_path.dart';
import '../../../repositories/firestore/firestore_service.dart';
import '../domain/pet_activity.dart';

/// Provides access to the Firestore database storing FeedingSchedule documents.
class PetActivityDatabase {
  PetActivityDatabase(this.ref);

  final ProviderRef<PetActivityDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<PetActivity>> watchPetDetails(String userId, String petId) =>
      _service.watchCollection(
          path: FirestorePath.petActivities(userId, petId),
          builder: (data, documentId) => PetActivity.fromJson(data!));

  Stream<PetActivity> watchPetDetail(
          String petActivityId, String userId, String petId) =>
      _service.watchDocument(
          path: FirestorePath.petActivity(petActivityId, userId, petId),
          builder: (data, documentId) => PetActivity.fromJson(data!));

  Future<List<PetActivity>> fetchPetDetails(String userId, String petId) =>
      _service.fetchCollection(
          path: FirestorePath.petActivities(userId, petId),
          builder: (data, documentId) => PetActivity.fromJson(data!));

  Future<PetActivity> fetchPetDetail(
          String petActivityId, String userId, String petId) =>
      _service.fetchDocument(
          path: FirestorePath.petActivity(petActivityId, userId, petId),
          builder: (data, documentId) => PetActivity.fromJson(data!));

  Future<void> setPetDetails(
          PetActivity petActivity, String userId, String petId) =>
      _service.setData(
          path: FirestorePath.petActivity(petActivity.id, userId, petId),
          data: petActivity.toJson());

  Future<void> deleteGarden(
          PetActivity petActivity, String userId, String petId) =>
      _service.deleteData(
          path: FirestorePath.petActivity(petActivity.id, userId, petId));
}
