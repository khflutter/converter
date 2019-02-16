import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AppFlutterSlidable extends StatefulWidget {
  _AppFlutterSlidableState createState() => _AppFlutterSlidableState();
}

class _AppFlutterSlidableState extends State<AppFlutterSlidable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Container(
        child: new Slidable(
          delegate: new SlidableDrawerDelegate(),
          actionExtentRatio: 0.25,
          child: new Container(
            color: Colors.white,
            child: new ListTile(
              leading: new CircleAvatar(
                backgroundColor: Colors.indigoAccent,
                child: new Text('TK'),
                foregroundColor: Colors.white,
              ),
              title: new Text('Tile testing'),
              subtitle: new Text('SlidableDrawerDelegate'),
            ),
          ),
          actions: <Widget>[
            new IconSlideAction(
              caption: 'Archive',
              color: Colors.blue,
              icon: Icons.archive,
              onTap: () => print('Archive'),
            ),
            new IconSlideAction(
              caption: 'Share',
              color: Colors.indigo,
              icon: Icons.share,
              onTap: () => print('Share'),
            ),
          ],
          secondaryActions: <Widget>[
            new IconSlideAction(
              caption: 'More',
              color: Colors.black45,
              icon: Icons.more_horiz,
              onTap: () => print('More'),
            ),
            new IconSlideAction(
              caption: 'Delete',
              color: Colors.red,
              icon: Icons.delete,
              onTap: () => print('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
