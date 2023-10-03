import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class PetFood extends StatelessWidget {
  const PetFood({super.key});

  static const routeName = '/pet_food';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Pet Food Page'),
      ),
    );
  }
}
