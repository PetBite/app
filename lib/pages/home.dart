import 'package:flutter/material.dart';

import 'home/home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final int _selectedIndex = 0;

  List<Widget> pageList = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          onTap: (index){
            switch(index){
              case 0:
                Navigator.pushNamed(context, "/first");
                break;
              case 1:
                Navigator.pushNamed(context, "/second");
                break;
              case 2:
                Navigator.pushNamed(context, "/third");
                break;
              case 3:
                Navigator.pushNamed(context, "/fourth");
                break;
              case 4:
                Navigator.pushNamed(context, "/fifth");
                break;
              case 5:
                Navigator.pushNamed(context, "/sixth");
                break;
            }
          },
        ),
      ),
    );
  }
}