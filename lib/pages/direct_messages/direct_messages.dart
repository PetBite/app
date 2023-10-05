import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class DirectMessages extends StatelessWidget {
  const DirectMessages({super.key});

  static const routeName = '/direct_messages';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Direct Messages'),
      ),
      body: const Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            title: Text("Philip M. Johnson"),
            subtitle: Text("Your app is looking awesome! : ^)"),
            trailing: Text("10:14 AM"),
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            title: Text("Wenhao Qiu"),
            subtitle: Text("nice"),
            trailing: Text("9:37 AM"),
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            title: Text("Braydon Nagasako"),
            subtitle: Text("thanks"),
            trailing: Text("8:42 AM"),
          )
        ]
      ),
    );
  }
}
