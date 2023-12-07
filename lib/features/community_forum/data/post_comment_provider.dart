import 'package:app/features/common/community_id_provider.dart';
import 'package:app/features/common/post_id_provider.dart';
import 'package:app/features/community_forum/domain/post_comment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'post_comment_database.dart';

part 'post_comment_provider.g.dart';

@riverpod
PostCommentDatabase postCommentDatabase(PostCommentDatabaseRef ref) {
  return PostCommentDatabase(ref);
}

@riverpod
Stream<List<PostComment>> postComment(PostCommentRef ref) {
  final database = ref.watch(postCommentDatabaseProvider);
  final communityId = ref.watch(communityIdProvider);
  final postId = ref.watch(postIdProvider);
  return database.watchPostComments(communityId, postId);
}
