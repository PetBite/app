import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data_model/feeding_schedule_db.dart';

class FeedingCard extends ConsumerStatefulWidget {
  final String day;

  const FeedingCard({Key? key, required this.day}) : super(key: key);

  @override
  ConsumerState<FeedingCard> createState() => _FeedingCardState();
}

class _FeedingCardState extends ConsumerState<FeedingCard> {
  @override
  Widget build(BuildContext context) {
    final feedingScheduleDB = ref.watch(feedingScheduleDBProvider);
    List<DailyFeedingScheduleData> dailySchedules =
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
                      onChanged: (value) {},
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
