import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories/firestore/firestore_path.dart';
import '../../../repositories/firestore/firestore_service.dart';
import '../domain/feeding_schedule.dart';

/// Provides access to the Firestore database storing FeedingSchedule documents.
class FeedingScheduleDatabase {
  FeedingScheduleDatabase(this.ref);

  final ProviderRef<FeedingScheduleDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<FeedingScheduleData>> watchFeedingSchedules(String userId) =>
      _service.watchCollection(
          path: FirestorePath.feedingSchedules(userId),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Stream<FeedingScheduleData> watchFeedingSchedule(
          String feedingScheduleId, String userId) =>
      _service.watchDocument(
          path: FirestorePath.feedingSchedule(feedingScheduleId, userId),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Future<List<FeedingScheduleData>> fetchFeedingSchedules(String userId) =>
      _service.fetchCollection(
          path: FirestorePath.feedingSchedules(userId),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Future<FeedingScheduleData> fetchFeedingSchedule(
          String scheduleId, String userId) =>
      _service.fetchDocument(
          path: FirestorePath.feedingSchedule(scheduleId, userId),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Future<void> setFeedingSchedule(FeedingScheduleData schedule, String userId) {
    return _service.setData(
        path: FirestorePath.feedingSchedule(schedule.id, userId),
        data: schedule.toMap());
  }

  Future<void> deleteFeedingSchedule(
          FeedingScheduleData schedule, String userId) =>
      _service.deleteData(
          path: FirestorePath.feedingSchedule(schedule.id, userId));

  Future<void> updateDailySchedules(String scheduleId,
          List<DailyFeedingScheduleData> dailySchedule, String userId) =>
      _service.updateDaily(
          path: FirestorePath.feedingSchedule(scheduleId, userId),
          dailySchedule: dailySchedule);
}
