import 'package:flutter/material.dart';
import '../data_model/feeding_schedule_db.dart';

class FeedingCard extends StatelessWidget {
  const FeedingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> feedingScheduleIDs = FeedingScheduleDB.getFeedingScheduleIDs();
    List<String> feedingScheduleDates =
        FeedingScheduleDB.getFeedingScheduleDates().toSet().toList();

    return Card(
      child: Center(
        child: Column(
          children: feedingScheduleDates
              .map((element) =>
                  Column(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      feedingScheduleDB.getFeedingScheduleByDate(element).date,
                      textAlign: TextAlign.center,
                    ),
                    Column(
                      children: feedingScheduleIDs
                          .map((element) => ListTile(
                                title: Text(feedingScheduleDB
                                    .getFeedingScheduleById(element)
                                    .name),
                                subtitle: Text(feedingScheduleDB
                                    .getFeedingScheduleById(element)
                                    .time),
                                trailing: Checkbox(
                                  value: true,
                                  onChanged: (value) {},
                                ),
                              ))
                          .toList(),
                    ),
                  ]))
              .toList(),
        ),
      ),
    );
  }
}
