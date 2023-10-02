import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class Settings extends StatelessWidget {
  const Settings({super.key});

  static const routeName = '/feeding_schedule';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Settings Page'),
      ),
    );
  }
}
