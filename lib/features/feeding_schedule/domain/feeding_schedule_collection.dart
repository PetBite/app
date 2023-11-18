import 'package:app/features/feeding_schedule/domain/feeding_schedule.dart';

class FeedingScheduleCollection {
  FeedingScheduleCollection(schedules) : _schedules = schedules;

  final List<FeedingScheduleData> _schedules;

  void updateDailySchedule({
    required String id,
    required String day,
    required List<DailyFeedingScheduleData> schedules,
  }) {
    int index = _schedules.indexWhere((schedule) => schedule.id == id);
    if (index != -1) {
      _schedules[index] =
          FeedingScheduleData(id: id, day: day, schedules: schedules);
    } else {
      _schedules
          .add(FeedingScheduleData(id: id, day: day, schedules: schedules));
    }
  }

  List<DailyFeedingScheduleData> getFeedingSchedulesByDay(String day) {
    return _schedules.firstWhere((daily) => daily.day == day).schedules;
  }

  List<FeedingScheduleData> getAllFeedingSchedules() {
    return _schedules;
  }

  FeedingScheduleData getFeedingScheduleById(String id) {
    return _schedules.firstWhere((daily) => daily.id == id);
  }

  List<String> getFeedingScheduleIDs() {
    return _schedules.map((daily) => daily.id).toList();
  }

  List<String> getFeedingScheduleDays() {
    return _schedules.map((daily) => daily.day).toList();
  }
}
