class FirestorePath {
  static String feedingSchedule(
          String scheduleId, String userId, String petId) =>
      'users/$userId/pet_details/$petId/feeding_schedules/$scheduleId';
  static String feedingSchedules(String userId, String petId) =>
      'users/$userId/pet_details/$petId/feeding_schedules';

  static String petDetail(String petId, String userId) =>
      'users/$userId/pet_details/$petId';
  static String petDetails(String userId) => 'users/$userId/pet_details';

  static String user(String userId) => 'users/$userId';
  static String users() => 'users';

  static String petActivity(String activityId, String userId, String petId) =>
      'users/$userId/pet_details/$petId/activities/$activityId';
  static String petActivities(String userId, String petId) =>
      'users/$userId/pet_details/$petId/activities';
}
