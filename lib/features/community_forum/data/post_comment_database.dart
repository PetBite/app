import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories/firestore/firestore_path.dart';
import '../../../repositories/firestore/firestore_service.dart';
import '../domain/post_comment.dart';

class PostCommentDatabase {
  PostCommentDatabase(this.ref);

  final ProviderRef<PostCommentDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<PostComment>> watchPostComments(
          String communityId, String postId) =>
      _service.watchCollection(
          path: FirestorePath.communityPostComments(communityId, postId),
          builder: (data, documentId) => PostComment.fromJson(data!));

  Stream<PostComment> watchPostComment(
          String communityId, String postId, String commentId) =>
      _service.watchDocument(
          path: FirestorePath.communityPostComment(
              communityId, postId, commentId),
          builder: (data, documentId) => PostComment.fromJson(data!));

  Future<List<PostComment>> fetchPostComments(
          String communityId, String postId) =>
      _service.fetchCollection(
          path: FirestorePath.communityPostComments(communityId, postId),
          builder: (data, documentId) => PostComment.fromJson(data!));

  Future<PostComment> fetchPostComment(
          String communityId, String postId, String commentId) =>
      _service.fetchDocument(
          path: FirestorePath.communityPostComment(
              communityId, postId, commentId),
          builder: (data, documentId) => PostComment.fromJson(data!));

  Future<void> setPostComment(
          PostComment postComment, String communityId, String postId) =>
      _service.setData(
          path: FirestorePath.communityPostComment(
              communityId, postId, postComment.id),
          data: postComment.toJson());

  Future<void> deletePostComment(
          PostComment postComment, String communityId, String postId) =>
      _service.deleteData(
          path: FirestorePath.communityPostComment(
              communityId, postId, postComment.id));
}
