import 'package:app/pages/activity_log/detailed_activity_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../data_model/pet_activity_db.dart';

class ActivityLogPage extends ConsumerStatefulWidget {
  const ActivityLogPage({Key? key}) : super(key: key);

  static const routeName = '/activity_log';

  @override
  ConsumerState<ActivityLogPage> createState() => _ActivityLogPageState();
}

class _ActivityLogPageState extends ConsumerState<ActivityLogPage> {
  @override
  Widget build(BuildContext context) {

    List<String> activityIDs = activityDB.getActivityIDs();
    List<String> activityDates = activityDB.getActivityDates().toSet().toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Activity Log'), actions: [
        IconButton(
          icon: const Icon(Icons.details),
          onPressed: () {
            Navigator.pushNamed(context, DetailedActivityPage.routeName);
          },
          tooltip: 'Detailed View',
        )
      ]),
      body:
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: activityDates.reversed
                .map((date) =>
                Column(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    getDay(activityDB.getActivityByDate(date).date),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  Column(
                    children: activityIDs.where((element) => activityDB.getActivityById(element).date == date)
                        .map((element) =>
                          ListTile(
                            leading: const Icon(Icons.pets),
                            title: Text(activityDB.getActivityById(element).title),
                            subtitle: Text(activityDB.getActivityById(element).timestamp),
                          )
                        ).toList(),
                  ),
                ]))
                .toList(),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  String getDay(String date) {
    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(days:1));
    String currentDate = DateFormat('yMd').format(now);
    String yesterdayDate = DateFormat('yMd').format(yesterday);
    if (date == currentDate) {
      return "Today";
    } else if (date == yesterdayDate) {
      return "Yesterday";
    } else {
      return date;
    }
  }
}
