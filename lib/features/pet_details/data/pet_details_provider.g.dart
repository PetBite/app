// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$petDetailsDatabaseHash() =>
    r'fa0931280a67774e7a352ca379595f950b40a4bc';

/// See also [petDetailsDatabase].
@ProviderFor(petDetailsDatabase)
final petDetailsDatabaseProvider =
    AutoDisposeProvider<PetDetailsDatabase>.internal(
  petDetailsDatabase,
  name: r'petDetailsDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$petDetailsDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PetDetailsDatabaseRef = AutoDisposeProviderRef<PetDetailsDatabase>;
String _$petdetailsHash() => r'2c9e934f5d568f60fa5038277bbc33e7f9cab0cf';

/// See also [petdetails].
@ProviderFor(petdetails)
final petdetailsProvider =
    AutoDisposeStreamProvider<List<PetDetailsData>>.internal(
  petdetails,
  name: r'petdetailsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$petdetailsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PetdetailsRef = AutoDisposeStreamProviderRef<List<PetDetailsData>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
