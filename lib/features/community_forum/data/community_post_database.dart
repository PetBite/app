import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories/firestore/firestore_path.dart';
import '../../../repositories/firestore/firestore_service.dart';
import '../domain/community_post.dart';

class CommunityPostDatabase {
  CommunityPostDatabase(this.ref);

  final ProviderRef<CommunityPostDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<CommunityPost>> watchCommunityPosts(String communityId) =>
      _service.watchCollection(
          path: FirestorePath.communityPosts(communityId),
          builder: (data, documentId) => CommunityPost.fromJson(data!));

  Stream<CommunityPost> watchCommunityPost(
          String communityPostId, String postId) =>
      _service.watchDocument(
          path: FirestorePath.communityPost(communityPostId, postId),
          builder: (data, documentId) => CommunityPost.fromJson(data!));

  Future<List<CommunityPost>> fetchCommunityPosts(String communityId) =>
      _service.fetchCollection(
          path: FirestorePath.communityPosts(communityId),
          builder: (data, documentId) => CommunityPost.fromJson(data!));

  Future<CommunityPost> fetchCommunityPost(
          String communityPostId, String postId) =>
      _service.fetchDocument(
          path: FirestorePath.communityPost(communityPostId, postId),
          builder: (data, documentId) => CommunityPost.fromJson(data!));

  Future<void> setCommunityPost(CommunityPost communityPost, String postId) =>
      _service.setData(
          path: FirestorePath.communityPost(communityPost.id, postId),
          data: communityPost.toJson());

  Future<void> deleteCommunityPost(
          String communityId, CommunityPost communityPost) =>
      _service.deleteData(
          path: FirestorePath.communityPost(communityId, communityPost.id));
}
