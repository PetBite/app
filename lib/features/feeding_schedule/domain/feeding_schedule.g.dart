// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeding_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedingScheduleDataImpl _$$FeedingScheduleDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedingScheduleDataImpl(
      id: json['id'] as String,
      day: json['day'] as String,
      schedules: (json['schedules'] as List<dynamic>)
          .map((e) =>
              DailyFeedingScheduleData.fromJson(e as Map<String, dynamic>))
          .toList(),
      isExpanded: json['isExpanded'] as bool? ?? false,
    );

Map<String, dynamic> _$$FeedingScheduleDataImplToJson(
        _$FeedingScheduleDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'schedules': instance.schedules,
      'isExpanded': instance.isExpanded,
    };

_$DailyFeedingScheduleDataImpl _$$DailyFeedingScheduleDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DailyFeedingScheduleDataImpl(
      name: json['name'] as String,
      time: json['time'] as String? ?? "",
      foodType: json['foodType'] as String? ?? "",
      quantity: json['quantity'] as String? ?? "",
      complete: json['complete'] as bool? ?? false,
    );

Map<String, dynamic> _$$DailyFeedingScheduleDataImplToJson(
        _$DailyFeedingScheduleDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'time': instance.time,
      'foodType': instance.foodType,
      'quantity': instance.quantity,
      'complete': instance.complete,
    };
