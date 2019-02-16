import 'package:flutter/material.dart';
import 'package:khunit/config/kh_unit_env.dart';
import 'package:khunit/pages/settings.dart';

class MyDrawer extends StatefulWidget {
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              KhUnitEnv.appName,
              style: TextStyle(
                fontFamily: "khmerM1",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "ទំព័រដើម",
              style: TextStyle(
                fontFamily: "KhmerBattambangBold",
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "ការកំណត់",
              style: TextStyle(
                fontFamily: "KhmerBattambangBold",
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          )
        ],
      ),
    );
  }
}
