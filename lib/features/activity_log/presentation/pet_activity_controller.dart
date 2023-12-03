import 'package:app/features/activity_log/data/pet_actvitiy_database.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/pet_activity.dart';
import '../data/pet_activity_provider.dart';

part 'pet_activity_controller.g.dart';

@riverpod
class PetActivityController extends _$PetActivityController {
  bool mounted = true;

  @override
  FutureOr<void> build() {
    ref.onDispose(() => mounted = false);
    state = const AsyncData(null);
  }

  Future<void> updatePetActivity({
    required PetActivity activity,
    required VoidCallback onSuccess,
    required String userId,
    required String petId,
  }) async {
    state = const AsyncLoading();
    PetActivityDatabase database = ref.watch(petActivityDatabaseProvider);
    final newState = await AsyncValue.guard(
        () => database.setPetActivity(activity, userId, petId));
    if (mounted) {
      state = newState;
    }
    if (!state.hasError) {
      onSuccess();
    }
  }

  Future<void> deletePetActivity({
    required PetActivity activity,
    required VoidCallback onSuccess,
    required String userId,
    required String petId,
  }) async {
    state = const AsyncLoading();
    PetActivityDatabase database = ref.watch(petActivityDatabaseProvider);
    final newState = await AsyncValue.guard(
        () => database.deletePetActivity(activity, userId, petId));
    if (mounted) {
      state = newState;
    }
    if (!state.hasError) {
      onSuccess();
    }
  }
}
