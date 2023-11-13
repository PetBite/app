import 'package:app/features/feeding_schedule/presentation/feeding_schedule_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/feeding_schedule_db.dart';

class EditFeedingSchedule extends ConsumerWidget {
  const EditFeedingSchedule({Key? key}) : super(key: key);

  static const routeName = '/edit_feeding_schedule';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedingScheduleDB = ref.watch(feedingScheduleDBProvider);
    final List<FeedingScheduleData> feedingSchedules =
        feedingScheduleDB.getAllFeedingSchedules();

    void onSubmit() {}

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Feeding Schedule",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.save, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.clear, color: Colors.white),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
          child: FeedingScheduleForm(
            schedules: feedingSchedules,
          ),
        ),
      ),
    );
  }
}
