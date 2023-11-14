import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feeding_schedule.freezed.dart';
part 'feeding_schedule.g.dart';

@freezed
class FeedingScheduleData with _$FeedingScheduleData {
  factory FeedingScheduleData({
    required String id,
    required String day,
    required List<DailyFeedingScheduleData> schedules,
    @Default(false) bool isExpanded,
  }) = _FeedingScheduleData;

  factory FeedingScheduleData.fromJson(Map<String, dynamic> json) =>
      _$FeedingScheduleDataFromJson(json);
}

@freezed
class DailyFeedingScheduleData with _$DailyFeedingScheduleData {
  factory DailyFeedingScheduleData({
    required String name,
    String? time,
    String? foodType,
    String? quantity,
    @Default(false) bool complete,
  }) = _DailyFeedingScheduleData;

  factory DailyFeedingScheduleData.fromJson(Map<String, dynamic> json) =>
      _$DailyFeedingScheduleDataFromJson(json);
}
