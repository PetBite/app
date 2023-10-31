import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../data/pet_activity_db.dart';

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
    ref.read(activityDBProvider);
  }

  @override
  Widget build(BuildContext context) {
    final tooltip = ref.watch(tooltipProvider);
    final activityDB = ref.watch(activityDBProvider);

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
