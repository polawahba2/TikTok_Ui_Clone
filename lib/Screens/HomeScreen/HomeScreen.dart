import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone/Screens/AddScreen/AddScreen.dart';
import 'package:tiktok_ui_clone/Screens/HomeScreen/Home.dart';
import 'package:tiktok_ui_clone/Screens/InboxScreen/InboxScrreen.dart';
import 'package:tiktok_ui_clone/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:tiktok_ui_clone/Screens/SearchScreen/SearchScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = const [
    Home(),
    SearchScreen(),
    AddScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 60.0,
              height: 27.0,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Container(
                      // alignment: AlignmentDirectional.centerEnd,
                      width: 15,

                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 45, 108),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Container(
                      // alignment: AlignmentDirectional.centerStart,
                      width: 15,

                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 32, 211, 234),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Container(
                      // alignment: AlignmentDirectional.center,
                      width: 47,
                      height: 27.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.indeterminate_check_box_outlined),
              label: 'Inbox'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Me'),
        ],
      ),
    );
  }
}
