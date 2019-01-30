import 'package:flutter/material.dart';
import 'package:khunit/models/post.dart';

class ShowScreen extends StatefulWidget {
  final Post post;

  const ShowScreen({Key key, this.post}) : super(key: key);
  _ShowScreenState createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
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
        child: Text(
          widget.post.description,
          style: TextStyle(
            fontFamily: 'KhmerBattambangBold',
          ),
        ),
      ),
    );
  }
}
