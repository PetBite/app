import 'package:app/features/activity_log/domain/pet_activity.dart';
import 'package:app/features/activity_log/domain/pet_activity_collection.dart';
import 'package:app/features/all_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DetailedActivityPage extends ConsumerStatefulWidget {
  const DetailedActivityPage({super.key});

  static const routeName = '/detailed_activity_log';

  @override
  ConsumerState<DetailedActivityPage> createState() =>
      _DetailedActivityPageState();
}

class _DetailedActivityPageState extends ConsumerState<DetailedActivityPage> {
  @override
  void initState() {
    super.initState();
    ref.read(tooltipProvider);
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
      data: (allData) {
        return _build(context: context, petActivities: allData.petActivities);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }

  Widget _build(
      {required BuildContext context,
      required List<PetActivity> petActivities}) {
    final tooltip = ref.watch(tooltipProvider);
    PetActivityCollection activityDB = PetActivityCollection(petActivities);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Detailed Activity Log"),
        ),
        body: SafeArea(
            child: ListView(children: <Widget>[
          ListTile(
            leading: const Icon(Icons.pets),
            title: Text(activityDB.getActivityById('activity-001').title),
            subtitle:
                Text(activityDB.getActivityById('activity-001').timestamp),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: const TextField(
              maxLines: 10,
              decoration: InputDecoration(
                hintText: 'Enter detailed activity information',
              ),
            ),
          ),
          SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              // Chart title
              title: ChartTitle(text: 'Monthly activity status'),
              // Enable legend
              legend: const Legend(isVisible: true),
              // Enable tooltip
              tooltipBehavior: tooltip,
              series: <LineSeries<Activity, String>>[
                LineSeries<Activity, String>(
                    dataSource: <Activity>[
                      Activity('Jan', 35),
                      Activity('Feb', 28),
                      Activity('Mar', 34),
                      Activity('Apr', 32),
                      Activity('May', 40)
                    ],
                    xValueMapper: (Activity activity, _) => activity.year,
                    yValueMapper: (Activity activity, _) => activity.activities,
                    // Enable data label
                    dataLabelSettings: const DataLabelSettings(isVisible: true))
              ])
        ])));
  }
}

class Activity {
  Activity(this.year, this.activities);
  final String year;
  final double activities;
}

final tooltipProvider = StateProvider<TooltipBehavior>((ref) {
  final tooltip = TooltipBehavior(enable: true);
  return tooltip;
});
