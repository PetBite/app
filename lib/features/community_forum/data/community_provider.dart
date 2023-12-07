import 'package:app/features/community_forum/domain/community.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'community_database.dart';

part 'community_provider.g.dart';

@riverpod
CommunityDatabase communityDatabase(CommunityDatabaseRef ref) {
  return CommunityDatabase(ref);
}

@riverpod
Stream<List<Community>> communities(CommunitiesRef ref) {
  final database = ref.watch(communityDatabaseProvider);
  return database.watchCommunities();
}
