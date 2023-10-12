
class FeedingScheduleData {
  FeedingScheduleData({
    required this.id,
    required this.name,
    required this.time,
  });

  String id;
  String name;
  String time;
}

class FeedingScheduleDB {
  final List<FeedingScheduleData> _events = [
    FeedingScheduleData(
        id: 'event-001',
        name: 'Breakfast',
        time: '8:00 AM'),
    FeedingScheduleData(
        id: 'event-002',
        name: 'Lunch',
        time: '2:00 PM'),
    FeedingScheduleData(
        id: 'event-003',
        name: 'Dinner',
        time: '8:00 PM'),
  ];
  FeedingScheduleData getFeedingScheduleById(String id) {
    return feedingScheduleDB._events.firstWhere((element) => element.id == id);
  }

  static List<String> getFeedingScheduleIDs() {
    return feedingScheduleDB._events.map((element) => element.id).toList();
  }
}

FeedingScheduleDB feedingScheduleDB = FeedingScheduleDB();
