import 'package:flutter/material.dart';

import '../data_model/feeding_schedule_db.dart';

class FeedingCard extends StatelessWidget {
  const FeedingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> feedingScheduleIDs = FeedingScheduleDB.getFeedingScheduleIDs();

    return Card(
      child: Center(
          child: ListView(
        children: feedingScheduleIDs
            .map((element) =>
            Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "4/20/24",
                      textAlign: TextAlign.center,
                    ),
                    ListTile(
                      title: Text(feedingScheduleDB.getFeedingScheduleById(element).name),
                      subtitle: Text(feedingScheduleDB.getFeedingScheduleById(element).time),
                      trailing: Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                )),
            )
            .toList(),
      )),
    );
  }
}
