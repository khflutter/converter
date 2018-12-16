import 'package:flutter/material.dart';
import 'package:khunit/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String appName = "ខ្នាតគម្ពីរ";
  double drawerFontSize = 18.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF484B5B),
      ),
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text(
            appName,
            style: TextStyle(
              fontFamily: "khmerM1",
            ),
          ),
        ),
        body: Container(
          child: Center(
            child: Text(
              appName,
              style: TextStyle(
                fontFamily: "khmerM1"
              ),
            ),
          ),
        ),
      ),
    );
  }
}
