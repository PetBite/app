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
          child: ListView(
            children: feedingSchedules.map((schedule) {
              return ExpansionPanelList(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    schedule.isExpanded = !isExpanded;
                  });
                },
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          schedule.day,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: schedule.schedules.map<Widget>((day) {
                          return Card(
                            elevation: 5,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Meal Name',
                                      labelStyle: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 5.0),
                                      filled: true,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Time',
                                      labelStyle: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 5.0),
                                      filled: true,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Food Type',
                                      labelStyle: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 5.0),
                                      filled: true,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Quantity',
                                      labelStyle: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 5.0),
                                      filled: true,
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.grey,
                                    thickness: 1.0,
                                    height: 16.0,
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    isExpanded: schedule.isExpanded,
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
