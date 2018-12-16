import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
   String appName = "ខ្នាតគម្ពីរ";
  double drawerFontSize = 18.0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              Navigator.pop(context);
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
    );
  }
}
