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

  const FeedingScheduleData._();

  factory FeedingScheduleData.fromJson(Map<String, dynamic> json) =>
      _$FeedingScheduleDataFromJson(json);

  Map<String, dynamic> toMap() => {
        'id': id,
        'day': day,
        'schedules': schedules.map((e) => e.toJson()).toList(),
        'isExpanded': isExpanded,
      };
}

@freezed
class DailyFeedingScheduleData with _$DailyFeedingScheduleData {
  factory DailyFeedingScheduleData({
    required String name,
    @Default("") String? time,
    @Default("") String? foodType,
    @Default("") String? quantity,
    @Default(false) bool complete,
  }) = _DailyFeedingScheduleData;

  factory DailyFeedingScheduleData.fromJson(Map<String, dynamic> json) =>
      _$DailyFeedingScheduleDataFromJson(json);
}
