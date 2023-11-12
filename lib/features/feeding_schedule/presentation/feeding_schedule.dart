import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/features/feeding_schedule/presentation/feeding_card.dart';
import '../domain/feeding_schedule_db.dart';

class FeedingSchedulePage extends ConsumerWidget {
  const FeedingSchedulePage({Key? key}) : super(key: key);

  static const routeName = '/feeding_schedule';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedingScheduleDB = ref.watch(feedingScheduleDBProvider);
    List<FeedingScheduleData> weekSchedule =
        feedingScheduleDB.getAllFeedingSchedules();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Feeding Schedule',
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.edit_calendar,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/edit_feeding_schedule');
              },
            )
          ],
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
            child: Center(
          child: SizedBox(
            height: 400,
            child: ListView(
              physics: const PageScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: weekSchedule
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 360,
                          child: FeedingCard(day: e.day),
                        ),
                      ))
                  .toList(),
            ),
          ),
        )));
  }
}
