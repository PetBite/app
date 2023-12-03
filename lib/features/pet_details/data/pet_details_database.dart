import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories/firestore/firestore_path.dart';
import '../../../repositories/firestore/firestore_service.dart';
import '../domain/pet_details.dart';

/// Provides access to the Firestore database storing FeedingSchedule documents.
class PetDetailsDatabase {
  PetDetailsDatabase(this.ref);

  final ProviderRef<PetDetailsDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<PetDetailsData>> watchPetDetails(String userId) =>
      _service.watchCollection(
          path: FirestorePath.petDetails(userId),
          builder: (data, documentId) => PetDetailsData.fromJson(data!));

  Stream<PetDetailsData> watchPetDetail(String petDetailsId, String userId) =>
      _service.watchDocument(
          path: FirestorePath.petDetail(petDetailsId, userId),
          builder: (data, documentId) => PetDetailsData.fromJson(data!));

  Future<List<PetDetailsData>> fetchPetDetails(String userId) =>
      _service.fetchCollection(
          path: FirestorePath.petDetails(userId),
          builder: (data, documentId) => PetDetailsData.fromJson(data!));

  Future<PetDetailsData> fetchPetDetail(String petDetailsId, String userId) =>
      _service.fetchDocument(
          path: FirestorePath.petDetail(petDetailsId, userId),
          builder: (data, documentId) => PetDetailsData.fromJson(data!));

  Future<void> setPetDetails(PetDetailsData petDetail, String userId) =>
      _service.setData(
          path: FirestorePath.petDetail(petDetail.id, userId),
          data: petDetail.toJson());

  Future<void> deletePetDetails(PetDetailsData petDetail, String userId) =>
      _service.deleteData(path: FirestorePath.petDetail(petDetail.id, userId));
}
