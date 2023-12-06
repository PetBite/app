import 'package:app/features/community_forum/domain/community_post.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'community_post_database.dart';

part 'community_post_provider.g.dart';

@riverpod
CommunityPostDatabase communityPostDatabase(CommunityPostDatabaseRef ref) {
  return CommunityPostDatabase(ref);
}

@riverpod
Stream<List<CommunityPost>> communityPosts(CommunityPostRef ref) {
  final database = ref.watch(communityPostDatabaseProvider);
  return database.watchCommunityPosts();
}
