import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class Settings extends StatelessWidget {
  const Settings({super.key});

  static const routeName = '/feeding_schedule';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(children: const <Widget>[
        ListTile(
            leading: Icon(Icons.manage_accounts, size: 56),
            title: Text('Account'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
            leading: Icon(Icons.manage_accounts, size: 56),
            title: Text('Pet Profiles'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
            leading: Icon(Icons.circle_notifications, size: 56),
            title: Text('Notifications'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
            leading: Icon(Icons.access_time, size: 56),
            title: Text('Time Settings'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
            leading: Icon(Icons.language, size: 56),
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
            leading: Icon(Icons.location_on, size: 56),
            title: Text('Location'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
            leading: Icon(Icons.info_outline, size: 56),
            title: Text('App Information'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
            leading: Icon(Icons.help, size: 56),
            title: Text('Help'),
            trailing: Icon(Icons.arrow_forward_ios)),
      ])),
    );
  }
}
