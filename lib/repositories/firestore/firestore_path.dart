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

  static String petFood(String petFoodId) => 'pet_food/$petFoodId';
  static String petFoods() => 'pet_food';

  static String communities() => 'communities';
  static String community(String communityId) => 'communities/$communityId';
  static String communityPosts(String communityId) =>
      'communities/$communityId/posts';
  static String communityPost(String communityId, String postId) =>
      'communities/$communityId/posts/$postId';
  static String communityPostComment(
          String communityId, String postId, String commentId) =>
      'communities/$communityId/posts/$postId/comments/$commentId';
  static String communityPostComments(String communityId, String postId) =>
      'communities/$communityId/posts/$postId/comments';
}
