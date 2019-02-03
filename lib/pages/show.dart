import 'package:flutter/material.dart';
import 'package:khunit/localizations.dart';
import 'package:khunit/models/post.dart';
import 'package:country_icons/country_icons.dart';

class ShowScreen extends StatefulWidget {
  final Post post;

  const ShowScreen({Key key, this.post}) : super(key: key);
  _ShowScreenState createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  List<Locale> _locales = [
    Locale("EN", "en"),
    Locale("KH", "kh"),
  ];

  Locale _activeLocale;

  void initState() { 
    super.initState();
    setState(() {
      _activeLocale = _locales[0];
    });
  }

  void _changeLang(Locale locale) {
    AppLocalizations.load(locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.post.title,
          style: TextStyle(fontFamily: 'KhmerBattambangBold'),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(15.0),
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context).hello,
                    style: TextStyle(
                      fontFamily: 'KhmerBattambangBold',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _locales.map((Locale locale) {
                      return RaisedButton(
                        color: ((){
                          if (_activeLocale.languageCode == locale.languageCode) {
                            return Colors.blue;
                          } else {
                            return Colors.grey;
                          }
                        })(),
                        onPressed: () {
                          setState(() {
                            _changeLang(locale);
                            _activeLocale = locale;
                          });
                        },
                        child: Text(locale.languageCode),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
