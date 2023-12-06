import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories/firestore/firestore_path.dart';
import '../../../repositories/firestore/firestore_service.dart';
import '../domain/post_comment.dart';

class PostCommentDatabase {
  PostCommentDatabase(this.ref);

  final ProviderRef<PostCommentDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<PostComment>> watchPostComments(
          String communityPostId, String postId) =>
      _service.watchCollection(
          path: FirestorePath.communityPostComments(communityPostId, postId),
          builder: (data, documentId) => PostComment.fromJson(data!));

  Stream<PostComment> watchPostComment(
          String communityPostId, String postId, String commentId) =>
      _service.watchDocument(
          path: FirestorePath.communityPostComment(
              communityPostId, postId, commentId),
          builder: (data, documentId) => PostComment.fromJson(data!));

  Future<List<PostComment>> fetchPostComments(
          String communityPostId, String postId) =>
      _service.fetchCollection(
          path: FirestorePath.communityPostComments(communityPostId, postId),
          builder: (data, documentId) => PostComment.fromJson(data!));

  Future<PostComment> fetchPostComment(
          String communityPostId, String postId, String commentId) =>
      _service.fetchDocument(
          path: FirestorePath.communityPostComment(
              communityPostId, postId, commentId),
          builder: (data, documentId) => PostComment.fromJson(data!));

  Future<void> setPostComment(
          PostComment postComment, String communityId, String postId) =>
      _service.setData(
          path: FirestorePath.communityPostComment(
              communityId, postId, postComment.id),
          data: postComment.toJson());
}
