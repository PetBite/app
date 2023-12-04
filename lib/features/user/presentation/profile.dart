import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../all_data_provider.dart';
import '../domain/user.dart';
import '../domain/user_collection.dart';

/// Displays detailed information about a SampleItem.
class Profile extends ConsumerWidget {
  const Profile({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<AllData> asyncAllData = ref.watch(allDataProvider);
    return asyncAllData.when(
      data: (allData) {
        return _build(
            context: context,
            currentUserID: allData.currentUserID,
            users: allData.users);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }

  Widget _build(
      {required BuildContext context,
      required String currentUserID,
      required List<User> users}) {
    UserCollection userCollection = UserCollection(users);
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
                    userCollection.getUser(currentUserID).imagePath ??
                        'assets/images/flutter_logo.png'),
              ),
            ),
          ),
          ListTile(
            title: Center(
              child: Text(userCollection.getUser(currentUserID).name),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: Text(userCollection.getUser(currentUserID).username),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.manage_accounts, size: 35),
            title: Text('Account'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: const Icon(Icons.pets, size: 35),
            title: const Text('Pet List'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, '/pet_list');
            },
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
