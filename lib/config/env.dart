import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KhUnitEnv {
  static String appName = "គម្ពីរ";
  static String fontFamilyTitle = "khmerM1";
  static String fontFamilyText = "KhmerBattambangBold";
  static Color primaryColor = Color(0xFF484b5b);
  static Color primaryLightColor = Color(0xFF747788);
  static Color primaryDarkColor = Color(0xFF202332);

  static List<MenuItem> meunItems = [
    MenuItem(
        id: 1,
        title: 'ល្បឿនផ្ទេរទិន្នន័យ',
        icon: FontAwesomeIcons.tachometerAlt,
        backgourndColor: Color(0xFF2ab27b),
        textColor: Colors.white),
    MenuItem(
        id: 2,
        title: 'ផ្ទៃក្រលា',
        icon: FontAwesomeIcons.hourglassHalf,
        backgourndColor: Color(0xFF2ab27b),
        textColor: Colors.white),
    MenuItem(
        id: 3,
        title: 'ផ្ទុកទិន្នន័យ',
        icon: FontAwesomeIcons.database,
        backgourndColor: Color(0xFF2ab27b),
        textColor: Colors.white),
    MenuItem(
        id: 4,
        title: 'កំលាំង',
        icon: FontAwesomeIcons.gavel,
        backgourndColor: Color(0xFF2ab27b),
        textColor: Colors.white),
    MenuItem(
        id: 5,
        title: 'សីតុណ្ហាភាព',
        icon: FontAwesomeIcons.thermometerHalf,
        backgourndColor: Color(0xFF2ab27b),
        textColor: Colors.white),
    MenuItem(
        id: 6,
        title: 'លំហូរ',
        icon: FontAwesomeIcons.arrowsAltH,
        backgourndColor: Color(0xFF2ab27b),
        textColor: Colors.white),
    MenuItem(
        id: 7,
        title: 'ទំហំ មាឌ និង ចំណុះ',
        icon: FontAwesomeIcons.cube,
        backgourndColor: Color(0xFF2ab27b),
        textColor: Colors.white),
    MenuItem(
        id: 8,
        title: 'សំទុះ',
        icon: FontAwesomeIcons.chartLine,
        backgourndColor: Color(0xFF2ab27b),
        textColor: Colors.white),
    MenuItem(
        id: 9,
        title: 'ប្រេកង់',
        icon: FontAwesomeIcons.podcast,
        backgourndColor: Color(0xFF2ab27b),
        textColor: Colors.white),
    MenuItem(
        id: 10,
        title: 'ពេលវេលា',
        icon: FontAwesomeIcons.timesCircle,
        backgourndColor: Color(0xFF2ab27b),
        textColor: Colors.white),
    MenuItem(
        id: 11,
        title: 'ប្រវែង',
        icon: FontAwesomeIcons.arrowsAltH,
        backgourndColor: Color(0xFF2ab27b),
        textColor: Colors.white),
  ];
}

class MenuItem {
  final int id;
  final String title;
  final IconData icon;
  final Color backgourndColor;
  final Color textColor;

  MenuItem({
    this.id,
    this.title,
    this.icon,
    this.backgourndColor,
    this.textColor,
  });
}

class Env {
  static Color primaryColor = Color(0xFF484b5b);
  static Color primaryLightColor = Color(0xFF747788);
  static Color primaryDarkColor = Color(0xFF202332);

  static Color secondaryColor = Color(0xFF656678);
  static Color secondaryLightColor = Color(0xFF9394a7);
  static Color secondaryDarkColor = Color(0xFF3a3c4c);

  static Color secondaryTextColor = Color(0xFFd6d6d6);
  static Color secondaryLightTextColor = Color(0xFFFFFFFF);
  static Color secondaryDarkTextColor = Color(0xFFa5a5a5);
}
