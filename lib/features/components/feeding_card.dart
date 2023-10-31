import 'package:flutter/material.dart';
import '../data_model/feeding_schedule_db.dart';

class FeedingCard extends StatelessWidget {
  final String day;

  const FeedingCard({Key? key, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DailyFeedingScheduleData> dailySchedules =
        FeedingScheduleDB().getFeedingSchedulesByDay(day);

    return Card(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              day,
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
                        Text(schedule.time),
                        const SizedBox(height: 6),
                        Text('${schedule.foodType}: ${schedule.quantity}'),
                      ],
                    ),
                    trailing: Checkbox(
                      value: true,
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
