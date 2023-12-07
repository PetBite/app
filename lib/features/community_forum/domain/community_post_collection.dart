import 'community_post.dart';

class CommunityPostCollection {
  CommunityPostCollection(communityPosts) : _communityPosts = communityPosts;

  final List<CommunityPost> _communityPosts;

  CommunityPost getCommunityPostById(String id) {
    return _communityPosts.firstWhere((element) => element.id == id);
  }

  List<String> getCommunityPostIDs() {
    return _communityPosts.map((element) => element.id).toList();
  }
}
