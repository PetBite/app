// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_post_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$communityPostDatabaseHash() =>
    r'7770e6fee2b38b1faea45c89107a4504d5b88484';

/// See also [communityPostDatabase].
@ProviderFor(communityPostDatabase)
final communityPostDatabaseProvider =
    AutoDisposeProvider<CommunityPostDatabase>.internal(
  communityPostDatabase,
  name: r'communityPostDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$communityPostDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CommunityPostDatabaseRef
    = AutoDisposeProviderRef<CommunityPostDatabase>;
String _$communityPostsHash() => r'db77cbee44de302f0c5a0c96ceb3626be5767b9b';

/// See also [communityPosts].
@ProviderFor(communityPosts)
final communityPostsProvider =
    AutoDisposeStreamProvider<List<CommunityPost>>.internal(
  communityPosts,
  name: r'communityPostsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$communityPostsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CommunityPostsRef = AutoDisposeStreamProviderRef<List<CommunityPost>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
