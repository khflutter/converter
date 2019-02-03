import 'package:flutter/material.dart';
import 'package:khunit/config/kh_unit_env.dart';
import 'package:khunit/pages/home.dart';
import 'package:khunit/widgets/drawer.dart';

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "គម្ពីរ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF484B5B),
        fontFamily: KhUnitEnv.fontFamilyTitle,
      ),
      home: Home(),
    );
  }
}
