import 'community.dart';

class CommunityCollection {
  CommunityCollection(communities) : _communities = communities;

  final List<Community> _communities;

  Community getCommunityById(String id) {
    return _communities.firstWhere((element) => element.id == id);
  }

  List<String> getCommunityIDs() {
    return _communities.map((element) => element.id).toList();
  }
}
