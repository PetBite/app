import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/pet_details_database.dart';
import '../data/pet_details_provider.dart';
import '../domain/pet_details.dart';

part 'pet_details_controller.g.dart';

@riverpod
class PetDetailsController extends _$PetDetailsController {
  bool mounted = true;

  @override
  FutureOr<void> build() {
    ref.onDispose(() => mounted = false);
    state = const AsyncData(null);
  }

  Future<void> updatePetDetails({
    required PetDetailsData details,
    required VoidCallback onSuccess,
  }) async {
    state = const AsyncLoading();
    PetDetailsDatabase detailsDatabase = ref.watch(petDetailsDatabaseProvider);
    final newState =
    await AsyncValue.guard(() => detailsDatabase.setPetDetails(details));
    if (mounted) {
      state = newState;
    }
    // Weird. Can't use "if (state.hasValue)" below.
    if (!state.hasError) {
      onSuccess();
    }
  }

  Future<void> deletePetDetails({
    required PetDetailsData details,
    required VoidCallback onSuccess,
  }) async {
    state = const AsyncLoading();
    PetDetailsDatabase detailsDatabase = ref.watch(petDetailsDatabaseProvider);
    final newState =
    await AsyncValue.guard(() => detailsDatabase.deleteGarden(details));
    if (mounted) {
      state = newState;
    }
    if (!state.hasError) {
      onSuccess();
    }
  }
}