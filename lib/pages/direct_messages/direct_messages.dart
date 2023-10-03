import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class DirectMessages extends StatelessWidget {
  const DirectMessages({super.key});

  static const routeName = '/direct_messages';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Direct Messages Page'),
      ),
    );
  }
}
