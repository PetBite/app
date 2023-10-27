class ActivityData {
  ActivityData({
    required this.id,
    required this.petid,
    required this.title,
    required this.type,
    required this.content,
    required this.timestamp,
    required this.date,
  });

  String id;
  String petid;
  String title;
  String type;
  String content;
  String timestamp;
  String date;
}

class ActivityDB {
  final List<ActivityData> _activities = [
    ActivityData(
        id: 'activity-001',
        petid: 'pet-001',
        title: 'fed 1/2 cup of food',
        type: 'feeding',
        content: 'Fed kurt 1/2 cup of chicken flavored dog food',
        timestamp: '8:00 AM',
        date: '10/25/2023',
    ),
    ActivityData(
      id: 'activity-002',
      petid: 'pet-001',
      title: 'walked for 1 hour',
      type: 'exercise',
      content: 'Walked around the neighborhood with Kurt for an hour',
      timestamp: '10:00 AM',
      date: '10/25/2023',
    ),
    ActivityData(
      id: 'activity-003',
      petid: 'pet-001',
      title: 'Fed 1 cup of food',
      type: 'feeding',
      content: 'Fed Kurt a cup of Purina dog food',
      timestamp: '1:00 PM',
      date: '10/25/2023',
    ),
    ActivityData(
      id: 'activity-004',
      petid: 'pet-001',
      title: 'Fed 1/2 cup of food',
      type: 'feeding',
      content: 'Fed Kurt a 1/2 cup of kibble for breakfast',
      timestamp: '8:00 AM',
      date: '10/26/2023',
    ),
  ];
  ActivityData getActivityById(String id) {
    return activityDB._activities.firstWhere((element) => element.id == id);
  }

  List<String> getActivityIDs() {
    return activityDB._activities.map((element) => element.id).toList();
  }

  ActivityData getActivityByDate(String date) {
    return activityDB._activities.firstWhere((element) => element.date == date);
  }

  List<String> getActivityDates() {
    return activityDB._activities.map((element) => element.date).toList();
  }
}

ActivityDB activityDB = ActivityDB();
