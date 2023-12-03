import 'package:app/features/activity_log/presentation/activity_log.dart';
import 'package:app/features/community_forum/presentation/community_menu.dart';
import 'package:app/features/feeding_schedule/presentation/feeding_schedule.dart';
import 'package:app/features/user/presentation/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../all_data_provider.dart';
import '../../user/domain/user.dart';
import '../../user/domain/user_collection.dart';
import 'home_page.dart';

class Home extends ConsumerStatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  int _selectedIndex = 0;

  List<Widget> pageList = [
    const HomePage(),
    const FeedingSchedulePage(),
    const ActivityLogPage(),
    const CommunityMenu(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: pageList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Feeding Schedule',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: 'Activity Log',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_sharp),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage(
                  userCollection.getUser(currentUserID).imagePath ??
                      'assets/images/flutter_logo.png'),
              radius: 18,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF334192),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
