import 'package:app/features/pet_details/data/pet_details_provider.dart';
import 'package:app/features/pet_details/domain/pet_details.dart';
import 'package:app/features/user/domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'feeding_schedule/data/feeding_schedule_provider.dart';
import 'feeding_schedule/domain/feeding_schedule.dart';

part 'all_data_provider.g.dart';

class AllData {
  AllData({
    required this.feedingSchedules,
    required this.petDetails,
    required this.users,
    required this.currentUserID,
  });

  final List<FeedingScheduleData> feedingSchedules;
  final List<PetDetailsData> petDetails;
  final List<User> users;
  final String currentUserID;
}

@riverpod
Future<AllData> allData(AllDataRef ref) async {
  final feedingSchedules = ref.watch(feedingschedulesProvider.future);
  final petDetails = ref.watch(petdetailsProvider.future);
  final users = ref.watch(usersProvider.future);
  final currentUserID = ref.watch(currentUserIDProvider);
  return AllData(
      feedingSchedules: await feedingSchedules,
      petDetails: await petDetails,
      users: await users,
      currentUserID: currentUserID);
}
