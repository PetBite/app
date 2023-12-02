import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories/firestore/firestore_path.dart';
import '../../../repositories/firestore/firestore_service.dart';
import '../domain/feeding_schedule.dart';

/// Provides access to the Firestore database storing FeedingSchedule documents.
class FeedingScheduleDatabase {
  FeedingScheduleDatabase(this.ref);

  final ProviderRef<FeedingScheduleDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<FeedingScheduleData>> watchFeedingSchedules(
          String userId, String petId) =>
      _service.watchCollection(
          path: FirestorePath.feedingSchedules(userId, petId),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Stream<FeedingScheduleData> watchFeedingSchedule(
          String feedingScheduleId, String userId, String petId) =>
      _service.watchDocument(
          path: FirestorePath.feedingSchedule(feedingScheduleId, userId, petId),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Future<List<FeedingScheduleData>> fetchFeedingSchedules(
          String userId, String petId) =>
      _service.fetchCollection(
          path: FirestorePath.feedingSchedules(userId, petId),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Future<FeedingScheduleData> fetchFeedingSchedule(
          String scheduleId, String userId, String petId) =>
      _service.fetchDocument(
          path: FirestorePath.feedingSchedule(scheduleId, userId, petId),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Future<void> setFeedingSchedule(
      FeedingScheduleData schedule, String userId, String petId) {
    return _service.setData(
        path: FirestorePath.feedingSchedule(schedule.id, userId, petId),
        data: schedule.toMap());
  }

  Future<void> deleteFeedingSchedule(
          FeedingScheduleData schedule, String userId, String petId) =>
      _service.deleteData(
          path: FirestorePath.feedingSchedule(schedule.id, userId, petId));

  Future<void> updateDailySchedules(
          String scheduleId,
          List<DailyFeedingScheduleData> dailySchedule,
          String userId,
          String petId) =>
      _service.updateDaily(
          path: FirestorePath.feedingSchedule(
            scheduleId,
            userId,
            petId,
          ),
          dailySchedule: dailySchedule);
}
