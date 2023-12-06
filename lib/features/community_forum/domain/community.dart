import 'package:app/features/community_forum/domain/community_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'community.freezed.dart';
part 'community.g.dart';

@freezed
class Community with _$Community {
  const factory Community({
    required String id,
    required String name,
    required String description,
    required String imagePath,
    @Default([]) List<CommunityPost> posts,
  }) = _Community;

  const Community._();

  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);
}
