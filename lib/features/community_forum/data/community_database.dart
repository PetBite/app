import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../repositories/firestore/firestore_path.dart';
import '../../../repositories/firestore/firestore_service.dart';
import '../domain/community.dart';

class CommunityDatabase {
  CommunityDatabase(this.ref);

  final ProviderRef<CommunityDatabase> ref;

  final _service = FirestoreService.instance;

  Stream<List<Community>> watchCommunities() => _service.watchCollection(
      path: FirestorePath.communities(),
      builder: (data, documentId) => Community.fromJson(data!));

  Stream<Community> watchCommunity(String communityId) =>
      _service.watchDocument(
          path: FirestorePath.community(communityId),
          builder: (data, documentId) => Community.fromJson(data!));

  Future<List<Community>> fetchCommunities() => _service.fetchCollection(
      path: FirestorePath.communities(),
      builder: (data, documentId) => Community.fromJson(data!));

  Future<Community> fetchCommunity(String communityId) =>
      _service.fetchDocument(
          path: FirestorePath.community(communityId),
          builder: (data, documentId) => Community.fromJson(data!));

  Future<void> setCommunity(Community community) => _service.setData(
      path: FirestorePath.community(community.id!), data: community.toJson());
}
