class FirestorePath {
  static String feedingSchedule(String scheduleId) =>
      'feeding_schedules/$scheduleId';
  static String feedingSchedules() => 'feeding_schedules';
  static String petDetail(String detailsId) => 'pet_details/$detailsId';
  static String petDetails() => 'pet_details';
  static String user(String userId) => 'users/$userId';
  static String users() => 'users';
}
