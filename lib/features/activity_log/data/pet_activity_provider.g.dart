// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_activity_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$petActivityDatabaseHash() =>
    r'f01ca6a8acac9dc9b2bdcdc59d51b107d52d4fb9';

/// See also [petActivityDatabase].
@ProviderFor(petActivityDatabase)
final petActivityDatabaseProvider =
    AutoDisposeProvider<PetActivityDatabase>.internal(
  petActivityDatabase,
  name: r'petActivityDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$petActivityDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PetActivityDatabaseRef = AutoDisposeProviderRef<PetActivityDatabase>;
String _$petActivityHash() => r'50c817dcae8ee578add744eed1b7bf4c742f6e1b';

/// See also [petActivity].
@ProviderFor(petActivity)
final petActivityProvider =
    AutoDisposeStreamProvider<List<PetActivity>>.internal(
  petActivity,
  name: r'petActivityProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$petActivityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PetActivityRef = AutoDisposeStreamProviderRef<List<PetActivity>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
