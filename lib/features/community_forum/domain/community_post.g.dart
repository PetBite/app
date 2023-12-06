// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityPostImpl _$$CommunityPostImplFromJson(Map<String, dynamic> json) =>
    _$CommunityPostImpl(
      id: json['id'] as String,
      authorID: json['authorID'] as String,
      authorName: json['authorName'] as String,
      communityID: json['communityID'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      likesCount: json['likesCount'] as int? ?? 0,
      timestamp: json['timestamp'] as String,
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => PostComment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$$CommunityPostImplToJson(_$CommunityPostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorID': instance.authorID,
      'authorName': instance.authorName,
      'communityID': instance.communityID,
      'title': instance.title,
      'content': instance.content,
      'likesCount': instance.likesCount,
      'timestamp': instance.timestamp,
      'comments': instance.comments,
      'imagePath': instance.imagePath,
    };
