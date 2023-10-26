class FeedingScheduleData {
  FeedingScheduleData({
    required this.id,
    required this.day,
    required this.schedules,
  });

  String day;
  String id;
  List<DailyFeedingScheduleData> schedules;
}

class DailyFeedingScheduleData {
  DailyFeedingScheduleData({
    required this.name,
    required this.time,
    required this.foodType,
    required this.quantity,
  });

  String name;
  String time;
  String foodType;
  String quantity;
}

class FeedingScheduleDB {
  final List<FeedingScheduleData> _dailySchedules = [
    FeedingScheduleData(
      id: "day-1",
      day: 'Monday',
      schedules: [
        DailyFeedingScheduleData(
            name: 'Breakfast',
            time: '8:00 AM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup'),
        DailyFeedingScheduleData(
            name: 'Lunch',
            time: '2:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup'),
        DailyFeedingScheduleData(
            name: 'Dinner',
            time: '8:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup'),
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
            quantity: '1 cup'),
        DailyFeedingScheduleData(
            name: 'Lunch',
            time: '2:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup'),
        DailyFeedingScheduleData(
            name: 'Dinner',
            time: '8:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup'),
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
            quantity: '1 cup'),
        DailyFeedingScheduleData(
            name: 'Lunch',
            time: '2:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup'),
        DailyFeedingScheduleData(
            name: 'Dinner',
            time: '8:00 PM',
            foodType: 'Pedigree Adult',
            quantity: '1 cup'),
      ],
    ),
  ];

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

FeedingScheduleDB feedingScheduleDB = FeedingScheduleDB();
