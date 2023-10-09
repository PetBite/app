import 'package:app/pages/direct_messages/direct_message.dart';
import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class DirectMessageList extends StatelessWidget {
  const DirectMessageList({super.key});

  static const routeName = '/direct_messages';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Direct Messages'),
      ),
      body: Column(children: [
        ListTile(
          leading: const CircleAvatar(
            foregroundImage: AssetImage('assets/images/flutter_logo.png'),
          ),
          title: const Text("Philip M. Johnson"),
          subtitle: const Text("Your app is looking awesome! : ^)"),
          trailing: const Text("10:14 AM"),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DirectMessage()));
          },
        ),
        ListTile(
            leading: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            title: const Text("Wenhao Qiu"),
            subtitle: const Text("nice"),
            trailing: const Text("9:37 AM"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DirectMessage()));
            }),
        ListTile(
            leading: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            title: const Text("Braydon Nagasako"),
            subtitle: const Text("thanks"),
            trailing: const Text("8:42 AM"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DirectMessage()));
            })
      ]),
    );
  }
}
