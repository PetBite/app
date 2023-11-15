import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories/firestore/firestore_path.dart';
import '../../../repositories/firestore/firestore_service.dart';
import '../domain/pet_details.dart';

/// Provides access to the Firestore database storing FeedingSchedule documents.
class PetDetailsDatabase {
  PetDetailsDatabase(this.ref);

  final ProviderRef<PetDetailsDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<PetDetailsData>> watchPetDetails() =>
      _service.watchCollection(
          path: FirestorePath.petDetails(),
          builder: (data, documentId) => PetDetailsData.fromJson(data!));

  Stream<PetDetailsData> watchPetDetail(String petDetailsId) =>
      _service.watchDocument(
          path: FirestorePath.petDetail(petDetailsId),
          builder: (data, documentId) => PetDetailsData.fromJson(data!));

  Future<List<PetDetailsData>> fetchPetDetails() =>
      _service.fetchCollection(
          path: FirestorePath.petDetails(),
          builder: (data, documentId) => PetDetailsData.fromJson(data!));

  Future<PetDetailsData> fetchPetDetail(String petDetailsId) =>
      _service.fetchDocument(
          path: FirestorePath.petDetail(petDetailsId),
          builder: (data, documentId) => PetDetailsData.fromJson(data!));

  Future<void> setPetDetails(PetDetailsData petDetail) =>
      _service.setData(
          path: FirestorePath.petDetail(petDetail.id),
          data: petDetail.toJson());
}
