import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class FeedingSchedule extends StatelessWidget {
  const FeedingSchedule({super.key});

  static const routeName = '/feeding_schedule';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Feeding Schedule Page'),
      ),
    );
  }
}
