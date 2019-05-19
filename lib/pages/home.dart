import 'dart:async';
import 'package:flutter/material.dart';
import 'package:khunit/config/env.dart';
import 'package:khunit/database/db.dart';
import 'package:khunit/models/unit.dart';
// import 'package:khunit/pages/calculate.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  String _token;

  @override
  void initState() {
    super.initState();
    // _firebaseMessaging.requestNotificationPermissions();

    // _firebaseMessaging.configure(
    //   onMessage: (Map<String, dynamic> message) async {
    //     print("onMessage: $message");
    //   },
    //   onLaunch: (Map<String, dynamic> message) async {
    //     print("onLaunch: $message");
    //   },
    //   onResume: (Map<String, dynamic> message) async {
    //     print("onResume: $message");
    //   },
    // );
  }

  Future<void> _getToken() async {
    // _token = await _firebaseMessaging.getToken();
    print(_token);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Env.primaryColor,
      appBar: AppBar(
        title: Text(Env.appName),
        elevation: 0.0,
      ),
      // drawer: MyDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        children: Database.units.map((Unit unit) {
          return Material(
            elevation: 1.0,
            color: Env.secondaryColor,
            borderRadius: BorderRadius.circular(8.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(8.0),
              onTap: () {
                _getToken();
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => CalculateScreen(
                //           unit: unit,
                //         ),
                //   ),
                // );
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      unit.icon,
                      color: Env.secondaryTextColor,
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      unit.name,
                      style: TextStyle(
                        fontFamily: Env.fontFamilyTitle,
                        color: Env.secondaryTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
