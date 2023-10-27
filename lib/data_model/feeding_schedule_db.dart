import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeedingScheduleData {
  FeedingScheduleData({
    required this.id,
    required this.day,
    required this.schedules,
    this.isExpanded = false,
  });

  String day;
  String id;
  List<DailyFeedingScheduleData> schedules;
  bool isExpanded;
}

class DailyFeedingScheduleData {
  DailyFeedingScheduleData({
    required this.name,
    this.time,
    this.foodType,
    this.quantity,
    this.complete = false,
  });

  String name;
  String? time;
  String? foodType;
  String? quantity;
  bool complete;
}

class FeedingScheduleDB {
  FeedingScheduleDB(this.ref);

  final ProviderRef<FeedingScheduleDB> ref;

  final List<FeedingScheduleData> _dailySchedules = [
    FeedingScheduleData(
      id: "day-1",
      day: 'Monday',
      schedules: [
        DailyFeedingScheduleData(
            name: 'Breakfast',
            time: '8:00 AM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup',
            complete: true),
        DailyFeedingScheduleData(
            name: 'Lunch',
            time: '2:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup',
            complete: true),
        DailyFeedingScheduleData(
            name: 'Dinner',
            time: '8:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup',
            complete: false),
      ],
    ),
    FeedingScheduleData(
      id: "day-2",
      day: 'Tuesday',
      schedules: [
        DailyFeedingScheduleData(
            name: 'Breakfast',
            time: '8:00 AM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup',
            complete: true),
        DailyFeedingScheduleData(
            name: 'Lunch',
            time: '2:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup',
            complete: true),
        DailyFeedingScheduleData(
            name: 'Dinner',
            time: '8:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup',
            complete: false),
      ],
    ),
    FeedingScheduleData(
      id: "day-3",
      day: 'Wednesday',
      schedules: [
        DailyFeedingScheduleData(
            name: 'Breakfast',
            time: '8:00 AM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup',
            complete: true),
        DailyFeedingScheduleData(
            name: 'Lunch',
            time: '2:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup',
            complete: true),
        DailyFeedingScheduleData(
            name: 'Dinner',
            time: '8:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup',
            complete: false),
      ],
    ),
    FeedingScheduleData(
      id: "day-4",
      day: 'Thursday',
      schedules: [
        DailyFeedingScheduleData(
          name: 'Breakfast',
        ),
        DailyFeedingScheduleData(
          name: 'Lunch',
        ),
        DailyFeedingScheduleData(
          name: 'Dinner',
        ),
      ],
    ),
    FeedingScheduleData(
      id: "day-5",
      day: 'Friday',
      schedules: [
        DailyFeedingScheduleData(
          name: 'Breakfast',
        ),
        DailyFeedingScheduleData(
          name: 'Lunch',
        ),
        DailyFeedingScheduleData(
          name: 'Dinner',
        ),
      ],
    ),
    FeedingScheduleData(
      id: "day-6",
      day: 'Saturday',
      schedules: [
        DailyFeedingScheduleData(
          name: 'Breakfast',
        ),
        DailyFeedingScheduleData(
          name: 'Lunch',
        ),
        DailyFeedingScheduleData(
          name: 'Dinner',
        ),
      ],
    ),
    FeedingScheduleData(
      id: "day-7",
      day: 'Sunday',
      schedules: [
        DailyFeedingScheduleData(
          name: 'Breakfast',
        ),
        DailyFeedingScheduleData(
          name: 'Lunch',
        ),
        DailyFeedingScheduleData(
          name: 'Dinner',
        ),
      ],
    ),
  ];

  void updateSchedule({
    required String day,
    required List<DailyFeedingScheduleData> schedules,
  }) {}

  List<DailyFeedingScheduleData> getFeedingSchedulesByDay(String day) {
    return _dailySchedules.firstWhere((daily) => daily.day == day).schedules;
  }

  List<FeedingScheduleData> getAllFeedingSchedules() {
    return _dailySchedules;
  }

  FeedingScheduleData getFeedingScheduleById(String id) {
    return _dailySchedules.firstWhere((daily) => daily.id == id);
  }

  List<String> getFeedingScheduleIDs() {
    return _dailySchedules.map((daily) => daily.id).toList();
  }

  List<String> getFeedingScheduleDays() {
    return _dailySchedules.map((daily) => daily.day).toList();
  }
}

final feedingScheduleDBProvider = Provider<FeedingScheduleDB>((ref) {
  return FeedingScheduleDB(ref);
});
