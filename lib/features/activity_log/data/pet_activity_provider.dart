import 'package:app/features/activity_log/domain/pet_activity.dart';
import 'package:app/features/user/data/user_providers.dart';
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
  final userId = ref.read(currentUserIDProvider);
  final petId = ref.read(petIdProvider);
  return database.watchPetDetails(userId, petId);
}
