import 'post_comment.dart';

class PostCommentCollection {
  PostCommentCollection(postComments) : _postComments = postComments;

  final List<PostComment> _postComments;

  PostComment getPostCommentById(String id) {
    return _postComments.firstWhere((element) => element.id == id);
  }

  List<String> getPostCommentIDs() {
    return _postComments.map((element) => element.id).toList();
  }
}
