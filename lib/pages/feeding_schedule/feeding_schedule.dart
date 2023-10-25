import 'package:flutter/material.dart';
import 'package:app/components/feeding_card.dart';

class FeedingSchedulePage extends StatefulWidget {
  const FeedingSchedulePage({Key? key}) : super(key: key);

  static const routeName = '/feeding_schedule';

  @override
  State<FeedingSchedulePage> createState() => _FeedingSchedulePageState();
}

class _FeedingSchedulePageState extends State<FeedingSchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Feeding Schedule',
            textAlign: TextAlign.center,
          ),
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: ListView(children: const [FeedingCard()]),
        ));
  }
}
