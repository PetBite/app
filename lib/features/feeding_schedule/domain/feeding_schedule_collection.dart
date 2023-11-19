import 'package:app/features/feeding_schedule/domain/feeding_schedule.dart';

class FeedingScheduleCollection {
  FeedingScheduleCollection(schedules) : _schedules = schedules;

  final List<FeedingScheduleData> _schedules;

  List<DailyFeedingScheduleData> getFeedingSchedulesByDay(String day) {
    return _schedules.firstWhere((daily) => daily.day == day).schedules;
  }

  String getFeedingSchedulesIDByDay(String day) {
    return _schedules.firstWhere((schedule) => schedule.day == day).id;
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
