import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_comment.freezed.dart';
part 'post_comment.g.dart';

@freezed
class PostComment with _$PostComment {
  const factory PostComment({
    required String id,
    required String authorID,
    required String authorName,
    required String content,
    required int likesCount,
    required String timestamp,
  }) = _PostComment;

  const PostComment._();

  factory PostComment.fromJson(Map<String, dynamic> json) =>
      _$PostCommentFromJson(json);
}
