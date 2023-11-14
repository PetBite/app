import 'package:app/features/feeding_schedule/domain/feeding_schedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../all_data_provider.dart';
import '../domain/feeding_schedule_collection.dart';

class FeedingCard extends ConsumerStatefulWidget {
  final String day;

  const FeedingCard({Key? key, required this.day}) : super(key: key);

  @override
  ConsumerState<FeedingCard> createState() => _FeedingCardState();
}

class _FeedingCardState extends ConsumerState<FeedingCard> {
  @override
  @override
  Widget build(BuildContext context) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
      data: (allData) {
        return _build(context: context, schedules: allData.feedingSchedules);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }

  Widget _build(
      {required BuildContext context,
      required List<FeedingScheduleData> schedules}) {
    FeedingScheduleCollection feedingScheduleDB =
        FeedingScheduleCollection(schedules);
    final List<DailyFeedingScheduleData> dailySchedules =
        feedingScheduleDB.getFeedingSchedulesByDay(widget.day);

    return Card(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.day,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            ...dailySchedules.map((schedule) => Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ListTile(
                    title: Text(schedule.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 6),
                        Text(schedule.time ?? " "),
                        const SizedBox(height: 6),
                        schedule.foodType != ""
                            ? Text('${schedule.foodType}: ${schedule.quantity}')
                            : const Text(""),
                      ],
                    ),
                    trailing: Checkbox(
                      value: schedule.complete,
                      onChanged: (value) {
                        setState(() {
                          schedule = schedule.copyWith(complete: value!);
                        });
                      },
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
