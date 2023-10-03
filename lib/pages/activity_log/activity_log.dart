import 'package:app/components/activity.dart';
import 'package:flutter/material.dart';

class ActivityLogPage extends StatefulWidget {
  const ActivityLogPage({Key? key}) : super(key: key);

  static const routeName = '/activity_log';

  @override
  State<ActivityLogPage> createState() => _ActivityLogPageState();
}

class _ActivityLogPageState extends State<ActivityLogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity Log'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: <Widget>[
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
