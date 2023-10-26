import 'package:app/pages/activity_log/detailed_activity_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActivityLogPage extends ConsumerStatefulWidget {
  const ActivityLogPage({Key? key}) : super(key: key);

  static const routeName = '/activity_log';

  @override
  ConsumerState<ActivityLogPage> createState() => _ActivityLogPageState();
}

class _ActivityLogPageState extends ConsumerState<ActivityLogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Activity Log'), actions: [
        IconButton(
          icon: const Icon(Icons.details),
          onPressed: () {
            Navigator.pushNamed(context, DetailedActivityPage.routeName);
          },
          tooltip: 'Detailed View',
        )
      ]),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: const <Widget>[
          SizedBox(height: 30),
          Text(
            'Today',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.pets),
            title: Text('Fed 1/2 cup of food'),
            subtitle: Text('8:00 AM'),
          ),
          ListTile(
            leading: Icon(Icons.pets),
            title: Text('Walked for 1h 30m'),
            subtitle: Text('8:00 AM'),
          ),
          ListTile(
            leading: Icon(Icons.pets),
            title: Text('Fed 1 cup of food'),
            subtitle: Text('8:00 AM'),
          ),
          Text(
            'Yesterday',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.pets),
            title: Text('Fed 1/2 cup of food'),
            subtitle: Text('8:00 AM'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
