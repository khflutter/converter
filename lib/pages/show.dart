import 'package:flutter/material.dart';

class ShowScreen extends StatefulWidget {
  final Post;
  ShowScreen(this.Post);
  _ShowScreenState createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.Post.title,
          style: TextStyle(fontFamily: 'KhmerBattambangBold'),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Text(
          widget.Post.description,
          style: TextStyle(
            fontFamily: 'KhmerBattambangBold',
          ),
        ),
      ),
    );
  }
}
