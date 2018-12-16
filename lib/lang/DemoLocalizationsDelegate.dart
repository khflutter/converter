import 'dart:async';

import 'package:flutter/material.dart';
import 'package:khunit/lang/DemoLocalizations.dart';

class DemoLocalizationsDelegate extends LocalizationsDelegate<DemoLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['tr', 'en'].contains(locale.languageCode);

  @override
  Future<DemoLocalizations> load(Locale locale) async {
    DemoLocalizations localizations = new DemoLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}
