import 'package:app/features/user/data/user_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/feeding_schedule.dart';
import 'feeding_schedule_database.dart';

part 'feeding_schedule_provider.g.dart';

@riverpod
FeedingScheduleDatabase feedingScheduleDatabase(
    FeedingScheduleDatabaseRef ref) {
  return FeedingScheduleDatabase(ref);
}

@riverpod
Stream<List<FeedingScheduleData>> feedingschedules(FeedingschedulesRef ref) {
  final database = ref.watch(feedingScheduleDatabaseProvider);
  final userId = ref.read(currentUserIDProvider);
  return database.watchFeedingSchedules(userId);
}
