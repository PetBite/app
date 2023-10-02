import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class PetDetails extends StatelessWidget {
  const PetDetails({super.key});

  static const routeName = '/pet_details';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Det Details Page'),
      ),
    );
  }
}
