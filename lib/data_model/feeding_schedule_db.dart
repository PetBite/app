
class FeedingScheduleData {
  FeedingScheduleData({
    required this.id,
    required this.name,
    required this.time,
    required this.date,
  });

  String id;
  String name;
  String time;
  String date;
}

class FeedingScheduleDB {
  final List<FeedingScheduleData> _events = [
    FeedingScheduleData(
        id: 'event-001',
        name: 'Breakfast',
        time: '8:00 AM',
        date: '4/20/24'),
    FeedingScheduleData(
        id: 'event-002',
        name: 'Lunch',
        time: '2:00 PM',
        date: '4/20/24'),
    FeedingScheduleData(
        id: 'event-003',
        name: 'Dinner',
        time: '8:00 PM',
        date: '4/20/24'),
  ];
  FeedingScheduleData getFeedingScheduleById(String id) {
    return feedingScheduleDB._events.firstWhere((element) => element.id == id);
  }

  FeedingScheduleData getFeedingScheduleByDate(String date) {
    return feedingScheduleDB._events.firstWhere((element) => element.date == date);
  }

  static List<String> getFeedingScheduleIDs() {
    return feedingScheduleDB._events.map((element) => element.id).toList();
  }

  static List<String> getFeedingScheduleDates() {
    return feedingScheduleDB._events.map((element) => element.date).toList();
  }
}

FeedingScheduleDB feedingScheduleDB = FeedingScheduleDB();
