import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'feeding_schedule/data/feeding_schedule_provider.dart';
import 'feeding_schedule/domain/feeding_schedule.dart';

part 'all_data_provider.g.dart';

class AllData {
  AllData({
    required this.feedingSchedules,
  });

  final List<FeedingScheduleData> feedingSchedules;
}

@riverpod
Future<AllData> allData(AllDataRef ref) async {
  final feedingSchedules = ref.watch(feedingschedulesProvider.future);
  return AllData(feedingSchedules: await feedingSchedules);
}
