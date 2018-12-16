import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {
  _MyTabbarState createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // onTap: onTabTapped,
      // currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            'Home',
            style: TextStyle(fontFamily: "KhmerBattambangBold"),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.featured_play_list),
          title: Text(
            "My Tasks",
            style: TextStyle(fontFamily: "KhmerBattambangBold"),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          title: Text(
            "Add New",
            style: TextStyle(fontFamily: "KhmerBattambangBold"),
          ),
        ),
      ],
    );
  }
}
