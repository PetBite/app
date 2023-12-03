import 'package:app/features/user/data/user_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/pet_details.dart';
import 'pet_details_database.dart';

part 'pet_details_provider.g.dart';

@riverpod
PetDetailsDatabase petDetailsDatabase(PetDetailsDatabaseRef ref) {
  return PetDetailsDatabase(ref);
}

@riverpod
Stream<List<PetDetailsData>> petdetails(PetdetailsRef ref) {
  final database = ref.watch(petDetailsDatabaseProvider);
  final userId = ref.read(currentUserIDProvider);
  return database.watchPetDetails(userId);
}
