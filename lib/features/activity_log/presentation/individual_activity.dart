import 'package:app/features/activity_log/data/activity_id_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/pet_activity_db.dart';

class IndividualActivity extends ConsumerWidget {
  const IndividualActivity({Key? key}) : super(key: key);

  static const routeName = '/individualActivity';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ActivityDB activityDB = ref.watch(activityDBProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Individual Activity Log"),
      ),
      body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Text(
              activityDB.getActivityById(ref.watch(activityIdProvider)).title,
              style: const TextStyle(fontSize: 35),
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              activityDB.getActivityById(ref.watch(activityIdProvider)).date,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              activityDB.getActivityById(ref.watch(activityIdProvider)).timestamp,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 275,
              child: AspectRatio(
                aspectRatio: 1.32,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(),
                  ),
                  child: Text(
                    activityDB.getActivityById(ref.watch(activityIdProvider)).content,
                    style: const TextStyle(fontSize: 18),
                  )
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(Icons.pets),
              const SizedBox(width: 10),
              Text(
                'Type - ${activityDB.getActivityById(ref.watch(activityIdProvider)).type}',
                style: const TextStyle(fontSize: 20),
              ),
            ]),

          ])),
    );
  }
}
