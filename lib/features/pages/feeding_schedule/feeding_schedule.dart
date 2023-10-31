import 'package:flutter/material.dart';
import 'package:app/components/feeding_card.dart';
import '../../data_model/feeding_schedule_db.dart';

class FeedingSchedulePage extends StatefulWidget {
  const FeedingSchedulePage({Key? key}) : super(key: key);

  static const routeName = '/feeding_schedule';

  @override
  State<FeedingSchedulePage> createState() => _FeedingSchedulePageState();
}

class _FeedingSchedulePageState extends State<FeedingSchedulePage> {
  @override
  Widget build(BuildContext context) {
    List<FeedingScheduleData> weekSchedule =
        FeedingScheduleDB().getAllFeedingSchedules();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Feeding Schedule',
            textAlign: TextAlign.center,
          ),
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
