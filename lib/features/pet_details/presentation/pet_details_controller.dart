import 'package:app/features/feeding_schedule/domain/feeding_schedule.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
    required String userId,
  }) async {
    state = const AsyncLoading();
    PetDetailsDatabase detailsDatabase = ref.watch(petDetailsDatabaseProvider);
    final newState = await AsyncValue.guard(
        () => detailsDatabase.setPetDetails(details, userId));
    if (mounted) {
      state = newState;
    }
    // Weird. Can't use "if (state.hasValue)" below.
    if (!state.hasError) {
      onSuccess();
    }
  }

  Future<void> addNewPet({
    required PetDetailsData details,
    required VoidCallback onSuccess,
    required String userId,
    required String petId,
  }) async {
    state = const AsyncLoading();
    PetDetailsDatabase detailsDatabase = ref.watch(petDetailsDatabaseProvider);
    final newState = await AsyncValue.guard(() async {
      await detailsDatabase.setPetDetails(details, userId);
      await initalizeFeedingSchedule(userId: userId, petId: petId);
    });

    if (mounted) {
      state = newState;
    }
    // Weird. Can't use "if (state.hasValue)" below.
    if (!state.hasError) {
      onSuccess();
    }
  }

  Future<void> initalizeFeedingSchedule({
    required String userId,
    required String petId,
  }) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    WriteBatch batch = firestore.batch();

    List<String> weekdays = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];

    List<DailyFeedingScheduleData> schedules = [
      DailyFeedingScheduleData(name: 'Breakfast'),
      DailyFeedingScheduleData(name: 'Lunch'),
      DailyFeedingScheduleData(name: 'Dinner'),
    ];

    for (var i = 1; i <= 7; i++) {
      String dayId = 'day-$i';
      FeedingScheduleData data = FeedingScheduleData(
          id: dayId, day: weekdays[i - 1], schedules: schedules);
      DocumentReference docRef = firestore
          .collection('users')
          .doc(userId)
          .collection('pet_details')
          .doc(petId)
          .collection('feeding_schedules')
          .doc(dayId);
      batch.set(docRef, data.toMap());
    }

    try {
      await batch.commit();
    } catch (e) {
      print('Error initializing feeding schedule: $e');
    }

    Future<void> deletePetDetails({
      required PetDetailsData details,
      required VoidCallback onSuccess,
      required String userId,
    }) async {
      state = const AsyncLoading();
      PetDetailsDatabase detailsDatabase =
          ref.watch(petDetailsDatabaseProvider);
      final newState = await AsyncValue.guard(
          () => detailsDatabase.deleteGarden(details, userId));
      if (mounted) {
        state = newState;
      }
      if (!state.hasError) {
        onSuccess();
      }
    }
  }
}
