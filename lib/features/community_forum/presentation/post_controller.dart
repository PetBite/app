import 'package:app/features/community_forum/data/community_post_database.dart';
import 'package:app/features/community_forum/data/community_post_provider.dart';
import 'package:app/features/community_forum/domain/community_post.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_controller.g.dart';

@riverpod
class PostController extends _$PostController {
  bool mounted = true;

  @override
  FutureOr<void> build() {
    ref.onDispose(() => mounted = false);
    state = const AsyncData(null);
  }

  Future<void> updatePost({
    required CommunityPost post,
    required VoidCallback onSuccess,
    required String postId,
  }) async {
    state = const AsyncLoading();
    CommunityPostDatabase database = ref.watch(communityPostDatabaseProvider);
    final newState =
        await AsyncValue.guard(() => database.setCommunityPost(post, postId));
    if (mounted) {
      state = newState;
    }
    if (!state.hasError) {
      onSuccess();
    }
  }

  Future<void> deletePost({
    required CommunityPost post,
    required VoidCallback onSuccess,
    required String communityId,
  }) async {
    state = const AsyncLoading();
    CommunityPostDatabase database = ref.watch(communityPostDatabaseProvider);
    final newState = await AsyncValue.guard(
        () => database.deleteCommunityPost(communityId, post));
    if (mounted) {
      state = newState;
    }
    if (!state.hasError) {
      onSuccess();
    }
  }
}
