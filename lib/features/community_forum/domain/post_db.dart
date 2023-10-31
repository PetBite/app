import 'package:app/features/profile/domain/user_db.dart';

class PostData {
  PostData({
    required this.id,
    required this.authorID,
    required this.authorName,
    required this.communityID,
    required this.title,
    required this.content,
    required this.likesCount,
    required this.timestamp,
    this.imagePath,
  });

  String id;
  String authorID;
  String authorName;
  String communityID;
  String title;
  String content;
  int likesCount;
  String timestamp;
  String? imagePath;
}

class PostDB {
  final List<PostData> _posts = [
    PostData(
        id: 'post-001',
        authorID: 'user-001',
        authorName: 'Wenhao Qiu',
        communityID: 'community-001',
        title: 'My Husky Snowflake\'s transformation!',
        content:
            'I started feeding Snowflake a raw diet since the start of the year, and she\'s looking better than ever! Check out her transformation!',
        likesCount: 7,
        timestamp: '2:14 PM',
        imagePath: 'assets/images/homepagepic.png'),
    PostData(
        id: 'post-002',
        authorID: 'user-003',
        authorName: 'Keaton Wong',
        communityID: 'community-002',
        title: 'My Shiba Inu Cookie is almost as cute as Sana',
        content:
            'If you\'re thinking about getting a new dog, I highly recommend a Shiba Inu. They\'re super cute and very loyal; it\'s like having your own Sana!',
        likesCount: 69,
        timestamp: '10:52 AM',
        imagePath: 'assets/images/doge.png'),
  ];

  PostData getPost(String postID) {
    return _posts.firstWhere((postData) => postData.id == postID);
  }

  List<String> getYourPostIDs() {
    return _posts
        .map((postData) => postData.authorID)
        .where((authorID) => authorID == currentUserID)
        .toList();
  }
}

/// The singleton instance providing access to all post data for clients.
PostDB postDB = PostDB();
