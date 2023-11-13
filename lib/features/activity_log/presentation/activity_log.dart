import 'package:app/features/activity_log/data/activity_id_provider.dart';
import 'package:app/features/activity_log/presentation/detailed_activity_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../domain/pet_activity_db.dart';

import 'form_fields/add_activity.dart';
import 'form_fields/edit_activity.dart';
import 'individual_activity.dart';

class ActivityLogPage extends ConsumerStatefulWidget {
  const ActivityLogPage({Key? key}) : super(key: key);

  static const routeName = '/activity_log';

  @override
  ConsumerState<ActivityLogPage> createState() => _ActivityLogPageState();
}

class _ActivityLogPageState extends ConsumerState<ActivityLogPage> {
  @override
  void initState() {
    super.initState();
    ref.read(activityDBProvider);
  }

  @override
  Widget build(BuildContext context) {
    final ActivityDB activityDB = ref.watch(activityDBProvider);

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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: activityDates.reversed
            .map((date) => Column(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    getDay(activityDB.getActivityByDate(date).date),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(),
                  Column(
                    children: activityIDs
                        .where((element) =>
                            activityDB.getActivityById(element).date == date)
                        .map((element) => ListTile(
                              leading: IconButton(
                                icon: const Icon(
                                  Icons.pets,
                                ),
                                onPressed: () {
                                  ref
                                      .read(activityIdProvider.notifier)
                                      .state = element;
                                  Navigator.restorablePushNamed(
                                      context, IndividualActivity.routeName);
                                },
                              ),
                              title: Text(
                                  activityDB.getActivityById(element).title),
                              subtitle: Text(activityDB
                                  .getActivityById(element)
                                  .timestamp),
                              trailing: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.red,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    ref
                                        .read(activityIdProvider.notifier)
                                        .state = element;
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {return EditActivity();})).then((value) {
                                      setState(() {});
                                    });
                                  },
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ]))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {return AddActivity();})).then((value) {
            setState(() {});
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  String getDay(String date) {
    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(days: 1));
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
