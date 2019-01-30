import 'package:flutter/material.dart';
import 'package:khunit/config/kh_unit_env.dart';
import 'package:khunit/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF484B5B),
      ),
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text(
            KhUnitEnv.appName,
            style: TextStyle(
              fontFamily: "khmerM1",
            ),
          ),
        ),
        body: Container(
          child: Center(
            child: Text(
              KhUnitEnv.appName,
              style: TextStyle(
                fontFamily: KhUnitEnv.fontFamilyTitle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
