import 'package:app/pages/activity_log/activity_log.dart';
import 'package:app/pages/feeding_schedule/feeding_schedule.dart';
import 'package:app/pages/pet_details/pet_details.dart';
import 'package:app/pages/pet_food/pet_food.dart';
import 'package:app/pages/settings/settings.dart';
import 'package:flutter/material.dart';
import 'home/home_page.dart';

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
    const FeedingSchedule(),
    const ActivityLogPage(),
    const PetFood(),
    const PetDetails(),
    const Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Container(
              padding: const EdgeInsets.all(4.0),
              height: 50,
              width: 50,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    //add changing screens
                  });
                },
                child: Image.asset(
                  'assets/images/navbar_filler1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(4.0),
              height: 50,
              width: 50,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    //add changing screens
                  });
                },
                child: Image.asset(
                  'assets/images/navbar_filler2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(4.0),
              height: 50,
              width: 50,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    //add changing screens
                  });
                },
                child: Image.asset(
                  'assets/images/navbar_filler3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: pageList.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Feeding Schedule',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_drive_file_outlined),
              label: 'Activity Log',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank_outlined),
              label: 'Pet Food',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pets),
              label: 'Pet Details',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFF334192),
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
