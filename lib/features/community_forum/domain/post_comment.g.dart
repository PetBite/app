// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostCommentImpl _$$PostCommentImplFromJson(Map<String, dynamic> json) =>
    _$PostCommentImpl(
      id: json['id'] as String,
      authorID: json['authorID'] as String,
      authorName: json['authorName'] as String,
      content: json['content'] as String,
      likesCount: json['likesCount'] as int? ?? 0,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$PostCommentImplToJson(_$PostCommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorID': instance.authorID,
      'authorName': instance.authorName,
      'content': instance.content,
      'likesCount': instance.likesCount,
      'timestamp': instance.timestamp,
    };
