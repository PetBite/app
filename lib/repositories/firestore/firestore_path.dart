class FirestorePath {
  static String feedingSchedule(String scheduleId, String userId) =>
      'users/$userId/feeding_schedules/$scheduleId';
  static String feedingSchedules(String userId) =>
      'users/$userId/feeding_schedules';
  static String petDetail(String detailsId, String userId) =>
      'users/$userId/pet_details/$detailsId';
  static String petDetails(String userId) => 'users/$userId/pet_details';
  static String user(String userId) => 'users/$userId';
  static String users() => 'users';
}
