import 'package:flutter/material.dart';

class BottomNavigationBarDefault extends StatelessWidget {
  int _currentIndex;

  BottomNavigationBarDefault(this._currentIndex);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            'ទំព័រដើម',
            style: TextStyle(fontFamily: "KhmerBattambangBold"),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          title: Text(
            "បញ្ជូនសារ",
            style: TextStyle(fontFamily: "KhmerBattambangBold"),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text(
            "រូបតំណាង",
            style: TextStyle(fontFamily: "KhmerBattambangBold"),
          ),
        ),
      ],
    );
  }
}
