import 'package:app/features/activity_log/data/pet_activity_provider.dart';
import 'package:app/features/activity_log/domain/pet_activity.dart';
import 'package:app/features/common/pet_id_provider.dart';
import 'package:app/features/pet_details/data/pet_details_provider.dart';
import 'package:app/features/pet_details/domain/pet_details.dart';
import 'package:app/features/user/domain/user.dart';
import 'package:app/features/pet_food/data/pet_food_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'pet_food/domain/pet_food.dart';

import 'feeding_schedule/data/feeding_schedule_provider.dart';
import 'feeding_schedule/domain/feeding_schedule.dart';
import 'user/data/user_provider.dart';

part 'all_data_provider.g.dart';

class AllData {
  AllData(
      {required this.feedingSchedules,
      required this.petDetails,
      required this.users,
      required this.currentUserID,
      required this.currentPetID,
      required this.petActivities,
      required this.petFoods});

  final List<FeedingScheduleData> feedingSchedules;
  final List<PetDetailsData> petDetails;
  final List<User> users;
  final String currentUserID;
  final String currentPetID;
  final List<PetActivity> petActivities;
  final List<PetFoodData> petFoods;
}

@riverpod
Future<AllData> allData(AllDataRef ref) async {
  final users = ref.watch(usersProvider.future);
  final feedingSchedules = ref.watch(feedingschedulesProvider.future);
  final petDetails = ref.watch(petdetailsProvider.future);
  final petFoods = ref.watch(petFoodsProvider.future);
  final currentUserID = ref.watch(currentUserIDProvider);
  final currentPetID = ref.watch(petIdProvider);
  final petActvities = ref.watch(petActivityProvider.future);
  return AllData(
      feedingSchedules: await feedingSchedules,
      petDetails: await petDetails,
      users: await users,
      petActivities: await petActvities,
      petFoods: await petFoods,
      currentUserID: currentUserID,
      currentPetID: currentPetID);
}
