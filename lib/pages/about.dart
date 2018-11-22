import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final String _title;
  final String _desc;

  AboutPage(this._title, this._desc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_title}'),
      ),
      body: Center(
        child: Text("${_desc}"),
      ),
    );
  }
}
