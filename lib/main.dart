import 'package:flutter/material.dart';

import './product_manager.dart';
import './pages/about.dart';

// Tabs
import './tabs/home.dart';
import './tabs/message.dart';
import './tabs/profile.dart';

// User Contorl
import './seactions/input.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomeTab(), MessageTab(), ProfileTab()];

  String appName = "ខ្នាតគម្ពីរ";
  double drawerFontSize = 18.0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF484B5B),
      ),
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text(
                  appName,
                  style: TextStyle(
                    fontFamily: "khmerM1",
                    fontSize: drawerFontSize,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "ទំព័រដើម",
                  style: TextStyle(
                    fontFamily: "KhmerBattambangBold",
                    fontSize: drawerFontSize,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text(
                  "អំពីពួកយើង",
                  style: TextStyle(
                    fontFamily: "KhmerBattambangBold",
                    fontSize: drawerFontSize,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  "ការកំណត់",
                  style: TextStyle(
                    fontFamily: "KhmerBattambangBold",
                    fontSize: drawerFontSize,
                  ),
                ),
                onTap: () {
                  print("Clicked on Tap");
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            appName,
            style: TextStyle(
              fontFamily: "khmerM1",
            ),
          ),
        ),
        // body: _children[_currentIndex],
        body: userInput(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
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
        ),
      ),
    );
  }
}
