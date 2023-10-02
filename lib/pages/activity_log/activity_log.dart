import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class ActivityLog extends StatelessWidget {
  const ActivityLog({super.key});

  static const routeName = '/activity_log';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Activity Log Page'),
      ),
    );
  }
}
