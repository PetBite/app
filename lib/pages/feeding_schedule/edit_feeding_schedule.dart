import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data_model/feeding_schedule_db.dart';

class EditFeedingSchedule extends ConsumerStatefulWidget {
  const EditFeedingSchedule({super.key});

  static const routeName = '/edit_feeding_schedule';

  @override
  ConsumerState<EditFeedingSchedule> createState() =>
      _EditFeedingScheduleState();
}

class _EditFeedingScheduleState extends ConsumerState<EditFeedingSchedule> {
  @override
  Widget build(BuildContext context) {
    final feedingScheduleDB = ref.watch(feedingScheduleDBProvider);
    final List<FeedingScheduleData> feedingSchedules =
        feedingScheduleDB.getAllFeedingSchedules();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Feeding Schedule"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.save)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.clear))
        ],
      ),
      body: SafeArea(
          child: ListView(
        children: feedingSchedules
            .map((schedule) => ListTile(
                  title: Text(schedule.day),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Meal Name'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Time'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Food Type'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Quantity'),
                      ),
                    ],
                  ),
                ))
            .toList(),
      )),
    );
  }
}
