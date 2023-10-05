import 'package:flutter/material.dart';

class FeedingCard extends StatelessWidget {
  const FeedingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: ListView(
          children: const [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "4/20/24",
                    textAlign: TextAlign.center,
                  ),
                  ListTile(
                    title: Text("Breakfast"),
                    subtitle: Text("8:00 AM"),
                  ),
                ],
              )
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                      title: Text("Lunch"),
                    subtitle: Text("2:00 PM"),
                  ),
                ],
              )
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                      title: Text("Dinner"),
                    subtitle: Text("8:00 PM"),
                  ),
                ],
              )
            )
          ],
        )
      ),
    );
  }
}
