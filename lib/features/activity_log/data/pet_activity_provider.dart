import 'package:app/features/activity_log/domain/pet_activity.dart';
import 'package:app/features/user/data/user_provider.dart';
import 'package:app/features/common/pet_id_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'pet_actvitiy_database.dart';

part 'pet_activity_provider.g.dart';

@riverpod
PetActivityDatabase petActivityDatabase(PetActivityDatabaseRef ref) {
  return PetActivityDatabase(ref);
}

@riverpod
Stream<List<PetActivity>> petActivity(PetActivityRef ref) {
  final database = ref.watch(petActivityDatabaseProvider);
  final userId = ref.watch(currentUserIDProvider);
  final petId = ref.watch(petIdProvider);
  return database.watchPetDetails(userId, petId);
}
