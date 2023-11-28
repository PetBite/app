import 'package:app/features/activity_log/presentation/activity_log.dart';
import 'package:app/features/community_forum/presentation/community_menu.dart';
import 'package:app/features/feeding_schedule/presentation/feeding_schedule.dart';
import 'package:app/features/user/domain/user_db.dart';
import 'package:app/features/user/presentation/profile.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  userDB.getUser(currentUserID).imagePath ??
                      'assets/images/flutter_logo.png'),
              radius: 24,
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
