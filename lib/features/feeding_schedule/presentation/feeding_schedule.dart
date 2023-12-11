import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/features/feeding_schedule/presentation/feeding_card.dart';
import 'package:intl/intl.dart';
import '../domain/feeding_schedule.dart';
import '../../all_data_provider.dart';
import '../domain/feeding_schedule_collection.dart';

class FeedingSchedulePage extends ConsumerWidget {
  const FeedingSchedulePage({Key? key}) : super(key: key);

  static const routeName = '/feeding_schedule';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AllData> asyncAllData = ref.read(allDataProvider);
    return asyncAllData.when(
      data: (allData) {
        return _build(context: context, schedules: allData.feedingSchedules);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }

  Widget _build(
      {required BuildContext context,
      required List<FeedingScheduleData> schedules}) {
    FeedingScheduleCollection feedingScheduleDB =
        FeedingScheduleCollection(schedules);
    final List<FeedingScheduleData> weekSchedule =
        feedingScheduleDB.getAllFeedingSchedules();

    weekSchedule.sort((a, b) => a.id.compareTo(b.id));

    // Determine today's day
    String todayDay = DateFormat('EEEE').format(DateTime.now());

    int initialPageIndex =
        weekSchedule.indexWhere((schedule) => schedule.day == todayDay);
    if (initialPageIndex == -1) {
      initialPageIndex = 0;
    }

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
          child: PageView(
            physics: const PageScrollPhysics(),
            controller: PageController(initialPage: initialPageIndex),
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
      )),
    );
  }
}
