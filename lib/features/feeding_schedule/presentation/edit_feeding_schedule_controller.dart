import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/feeding_schedule.dart';
import '../data/feeding_schedule_database.dart';
import '../data/feeding_schedule_provider.dart';

part 'edit_feeding_schedule_controller.g.dart';

@riverpod
class EditFeedingScheduleController extends _$EditFeedingScheduleController {
  bool mounted = true;

  @override
  FutureOr<void> build() {
    ref.onDispose(() => mounted = false);
    state = const AsyncData(null);
  }

  Future<void> updateFeedingSchedule({
    required FeedingScheduleData schedule,
    required VoidCallback onSuccess,
    required String userId,
  }) async {
    state = const AsyncLoading();
    FeedingScheduleDatabase database =
        ref.watch(feedingScheduleDatabaseProvider);
    final newState = await AsyncValue.guard(
        () => database.setFeedingSchedule(schedule, userId));
    if (mounted) {
      state = newState;
    }
    if (!state.hasError) {
      onSuccess();
    }
  }

  Future<void> deleteFeedingSchedule({
    required FeedingScheduleData schedule,
    required VoidCallback onSuccess,
    required String userId,
  }) async {
    state = const AsyncLoading();
    FeedingScheduleDatabase database =
        ref.watch(feedingScheduleDatabaseProvider);
    final newState = await AsyncValue.guard(
        () => database.deleteFeedingSchedule(schedule, userId));
    if (mounted) {
      state = newState;
    }
    if (!state.hasError) {
      onSuccess();
    }
  }

  Future<void> updateScheduleCompleted({
    required String scheduleID,
    required List<DailyFeedingScheduleData> dailySchedule,
    required VoidCallback onSuccess,
    required String userId,
  }) async {
    state = const AsyncLoading();
    FeedingScheduleDatabase database =
        ref.watch(feedingScheduleDatabaseProvider);
    final newState = await AsyncValue.guard(
        () => database.updateDailySchedules(scheduleID, dailySchedule, userId));
    if (mounted) {
      state = newState;
    }
    if (!state.hasError) {
      onSuccess();
    }
  }
}
