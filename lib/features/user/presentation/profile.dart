import 'package:app/features/user/domain/user_db.dart';
import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class Profile extends StatelessWidget {
  const Profile({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage(
                    userDB.getUser(currentUserID).imagePath ??
                        'assets/images/flutter_logo.png'),
              ),
            ),
          ),
          ListTile(
            title: Center(
              child: Text(userDB.getUser(currentUserID).name),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: Text(userDB.getUser(currentUserID).username),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.manage_accounts, size: 35),
            title: Text('Account'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: const Icon(Icons.settings, size: 35),
            title: const Text('Settings'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ]),
      ),
    );
  }
}
