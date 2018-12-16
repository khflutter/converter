import 'package:flutter/material.dart';
import 'package:khunit/lang/DemoLocalizations.dart';
import 'package:khunit/lang/DemoLocalizationsDelegate.dart';
import 'package:khunit/widgets/drawer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      supportedLocales: [const Locale('en', 'US'), const Locale('tr', 'TR')],
      localizationsDelegates: [
        const DemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
        for (Locale supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode ||
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }

        return supportedLocales.first;
      },
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
              style: TextStyle(fontFamily: "khmerM1"),
            ),
          ),
        ),
      ),
    );
  }
}
