// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postCommentDatabaseHash() =>
    r'818ca3e9b9aaf9f634a41231644caceb005d23ff';

/// See also [postCommentDatabase].
@ProviderFor(postCommentDatabase)
final postCommentDatabaseProvider =
    AutoDisposeProvider<PostCommentDatabase>.internal(
  postCommentDatabase,
  name: r'postCommentDatabaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$postCommentDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PostCommentDatabaseRef = AutoDisposeProviderRef<PostCommentDatabase>;
String _$postCommentHash() => r'a90e66f5b878b45df08b9c8cc6982bcdeeceec6e';

/// See also [postComment].
@ProviderFor(postComment)
final postCommentProvider =
    AutoDisposeStreamProvider<List<PostComment>>.internal(
  postComment,
  name: r'postCommentProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$postCommentHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PostCommentRef = AutoDisposeStreamProviderRef<List<PostComment>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
