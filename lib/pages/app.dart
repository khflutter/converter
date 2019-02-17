import 'package:flutter/material.dart';
import 'package:khunit/config/env.dart';
import 'package:khunit/pages/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:khunit/pages/items.dart';
import '../localizations.dart';

class App extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [Locale("en"), Locale("kh")],
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
