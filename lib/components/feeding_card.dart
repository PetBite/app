import 'package:flutter/material.dart';

class FeedingCard extends StatelessWidget {
  const FeedingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
          child: ListView(
        children: [
          Card(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "4/20/24",
                textAlign: TextAlign.center,
              ),
              ListTile(
                title: const Text("Breakfast"),
                subtitle: const Text("8:00 AM"),
                trailing: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
            ],
          )),
          Card(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text("Lunch"),
                subtitle: const Text("2:00 PM"),
                trailing: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
            ],
          )),
          Card(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text("Dinner"),
                subtitle: const Text("8:00 PM"),
                trailing: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
            ],
          ))
        ],
      )),
    );
  }
}
