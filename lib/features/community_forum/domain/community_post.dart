import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_post.freezed.dart';
part 'community_post.g.dart';

@freezed
class CommunityPost with _$CommunityPost {
  const factory CommunityPost({
    required String id,
    required String authorID,
    required String authorName,
    required String communityID,
    required String title,
    required String content,
    @Default(0) int likesCount,
    required String timestamp,
    String? imagePath,
  }) = _CommunityPost;

  const CommunityPost._();

  factory CommunityPost.fromJson(Map<String, dynamic> json) =>
      _$CommunityPostFromJson(json);
}
