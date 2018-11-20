import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("About"),
        ),
        body: Center(
            child: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text("This is about page"),
              ),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go Back"),
              ),
            )
          ],
        )),
      ),
    );
  }
}
