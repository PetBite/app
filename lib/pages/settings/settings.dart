import 'package:flutter/material.dart';
import 'package:app/data_model/user_db.dart';

/// Displays detailed information about a SampleItem.
class Settings extends StatelessWidget {
  const Settings({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${userDB.getUser(currentUserID).username}\'s Settings'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: ListView(children: <Widget>[
        const ListTile(
            leading: Icon(Icons.manage_accounts, size: 35),
            title: Text('Account'),
            trailing: Icon(Icons.arrow_forward_ios)),
        ListTile(
          leading: const Icon(Icons.settings, size: 35),
          title: const Text('Settings'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushNamed(context, '/settings');
          },
        ),
        const ListTile(
            leading: Icon(Icons.access_time, size: 36),
            title: Text('Time Settings'),
            trailing: Icon(Icons.arrow_forward_ios)),
        const ListTile(
            leading: Icon(Icons.language, size: 35),
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios)),
        const ListTile(
            leading: Icon(Icons.location_on, size: 35),
            title: Text('Location'),
            trailing: Icon(Icons.arrow_forward_ios)),
        const ListTile(
            leading: Icon(Icons.info_outline, size: 35),
            title: Text('App Information'),
            trailing: Icon(Icons.arrow_forward_ios)),
        const ListTile(
            leading: Icon(Icons.help, size: 35),
            title: Text('Help'),
            trailing: Icon(Icons.arrow_forward_ios)),
      ])),
    );
  }
}
