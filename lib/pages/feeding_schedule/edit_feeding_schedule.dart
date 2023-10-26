import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        children: [],
      )),
    );
  }
}
