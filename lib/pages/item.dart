import 'package:flutter/material.dart';

class ShowItem extends StatefulWidget {
  _ShowItemState createState() => _ShowItemState();
}

class _ShowItemState extends State<ShowItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Container(
        child: Center(
          child: Text("App Bar"),
        ),
      ),
    );
  }
}