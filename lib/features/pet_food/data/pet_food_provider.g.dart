// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_food_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$petFoodDatabaseHash() => r'36c5a72f1e1a3a7c1da96e85cf61171763d89b07';

/// See also [petFoodDatabase].
@ProviderFor(petFoodDatabase)
final petFoodDatabaseProvider = AutoDisposeProvider<PetFoodDatabase>.internal(
  petFoodDatabase,
  name: r'petFoodDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$petFoodDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PetFoodDatabaseRef = AutoDisposeProviderRef<PetFoodDatabase>;
String _$petFoodHash() => r'd41ee2bbe05d3279c6f656ccddc1ac8b5646268e';

/// See also [petFood].
@ProviderFor(petFood)
final petFoodProvider = AutoDisposeStreamProvider<List<PetFoodData>>.internal(
  petFood,
  name: r'petFoodProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$petFoodHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PetFoodRef = AutoDisposeStreamProviderRef<List<PetFoodData>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
