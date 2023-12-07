import 'package:app/features/community_forum/data/post_comment_database.dart';
import 'package:app/features/community_forum/data/post_comment_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/post_comment.dart';

part 'comment_controller.g.dart';

@riverpod
class PostCommentController extends _$PostCommentController {
  bool mounted = true;

  @override
  FutureOr<void> build() {
    ref.onDispose(() => mounted = false);
    state = const AsyncData(null);
  }

  Future<void> updatePostComment({
    required PostComment comment,
    required VoidCallback onSuccess,
    required String communityId,
    required String postId,
  }) async {
    state = const AsyncLoading();
    PostCommentDatabase database = ref.watch(postCommentDatabaseProvider);
    final newState = await AsyncValue.guard(
        () => database.setPostComment(comment, communityId, postId));
    if (mounted) {
      state = newState;
    }
    if (!state.hasError) {
      onSuccess();
    }
  }

  Future<void> deletePostComment({
    required PostComment comment,
    required VoidCallback onSuccess,
    required String communityId,
    required String postId,
  }) async {
    state = const AsyncLoading();
    PostCommentDatabase database = ref.watch(postCommentDatabaseProvider);
    final newState = await AsyncValue.guard(
        () => database.deletePostComment(comment, communityId, postId));
    if (mounted) {
      state = newState;
    }
    if (!state.hasError) {
      onSuccess();
    }
  }
}
