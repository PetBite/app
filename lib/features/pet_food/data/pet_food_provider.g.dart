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
String _$petFoodsHash() => r'7e7c0a4fabd8dc17e4faa88ebf13b1add805e0e9';

/// See also [petFoods].
@ProviderFor(petFoods)
final petFoodsProvider = AutoDisposeStreamProvider<List<PetFoodData>>.internal(
  petFoods,
  name: r'petFoodsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$petFoodsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PetFoodsRef = AutoDisposeStreamProviderRef<List<PetFoodData>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
