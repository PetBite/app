import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories/firestore/firestore_path.dart';
import '../../../repositories/firestore/firestore_service.dart';
import '../domain/feeding_schedule.dart';

/// Provides access to the Firestore database storing FeedingSchedule documents.
class FeedingScheduleDatabase {
  FeedingScheduleDatabase(this.ref);

  final ProviderRef<FeedingScheduleDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<FeedingScheduleData>> watchFeedingSchedules() =>
      _service.watchCollection(
          path: FirestorePath.feedingSchedules(),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Stream<FeedingScheduleData> watchFeedingSchedule(String feedingScheduleId) =>
      _service.watchDocument(
          path: FirestorePath.feedingSchedule(feedingScheduleId),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Future<List<FeedingScheduleData>> fetchFeedingSchedules() =>
      _service.fetchCollection(
          path: FirestorePath.feedingSchedules(),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Future<FeedingScheduleData> fetchFeedingSchedule(String scheduleId) =>
      _service.fetchDocument(
          path: FirestorePath.feedingSchedule(scheduleId),
          builder: (data, documentId) => FeedingScheduleData.fromJson(data!));

  Future<void> setFeedingSchedule(FeedingScheduleData schedule) {
    return _service.setData(
        path: FirestorePath.feedingSchedule(schedule.id),
        data: schedule.toMap());
  }

  Future<void> deleteFeedingSchedule(FeedingScheduleData schedule) =>
      _service.deleteData(path: FirestorePath.feedingSchedule(schedule.id));

  Future<void> updateDailySchedules(
          String scheduleId, List<DailyFeedingScheduleData> dailySchedule) =>
      _service.updateDaily(
          path: FirestorePath.feedingSchedule(scheduleId),
          dailySchedule: dailySchedule);
}
