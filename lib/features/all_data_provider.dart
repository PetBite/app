import 'package:app/features/common/pet_id_provider.dart';
import 'package:app/features/pet_details/data/pet_details_provider.dart';
import 'package:app/features/pet_details/domain/pet_details.dart';
import 'package:app/features/user/domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'feeding_schedule/data/feeding_schedule_provider.dart';
import 'feeding_schedule/domain/feeding_schedule.dart';
import 'user/data/user_providers.dart';

part 'all_data_provider.g.dart';

class AllData {
  AllData(
      {required this.feedingSchedules,
      required this.petDetails,
      required this.users,
      required this.currentUserID,
      required this.currentPetID});

  final List<FeedingScheduleData> feedingSchedules;
  final List<PetDetailsData> petDetails;
  final List<User> users;
  final String currentUserID;
  final String currentPetID;
}

@riverpod
Future<AllData> allData(AllDataRef ref) async {
  final users = ref.watch(usersProvider.future);
  final feedingSchedules = ref.watch(feedingschedulesProvider.future);
  final petDetails = ref.watch(petdetailsProvider.future);
  final currentUserID = ref.watch(currentUserIDProvider);
  final currentPetID = ref.watch(petIdProvider);
  return AllData(
      feedingSchedules: await feedingSchedules,
      petDetails: await petDetails,
      users: await users,
      currentUserID: currentUserID,
      currentPetID: currentPetID);
}
