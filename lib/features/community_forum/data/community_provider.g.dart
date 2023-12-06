// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$communityDatabaseHash() => r'7e8d3cb3f848abd3f5d728849555192cb64ce9d2';

/// See also [communityDatabase].
@ProviderFor(communityDatabase)
final communityDatabaseProvider =
    AutoDisposeProvider<CommunityDatabase>.internal(
  communityDatabase,
  name: r'communityDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$communityDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CommunityDatabaseRef = AutoDisposeProviderRef<CommunityDatabase>;
String _$communitiesHash() => r'86187db6f5c0198e65ba0f622acbd2487c9f021b';

/// See also [communities].
@ProviderFor(communities)
final communitiesProvider = AutoDisposeStreamProvider<List<Community>>.internal(
  communities,
  name: r'communitiesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$communitiesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CommunitiesRef = AutoDisposeStreamProviderRef<List<Community>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
