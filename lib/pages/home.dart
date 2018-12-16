import 'package:flutter/material.dart';
import 'package:khunit/models/post.dart';
import 'package:khunit/pages/show.dart';
import 'package:khunit/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String appName = "ខ្នាតគម្ពីរ";
  double drawerFontSize = 18.0;

  List<Post> posts = [
    Post(1, "Hello Flutter", "lorem text here"),
    Post(2, "Nice Flutter", "lorem text here"),
    Post(3, "Mobile Flutter", "lorem text here"),
    Post(4, "App Flutter", "lorem text here"),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
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
        body: ListView.builder(
          itemCount: posts.length,
          padding: EdgeInsets.all(15.0),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text(
                      this.posts[index].title[0].toString().toUpperCase(),
                    ),
                  ),
                  title: Text(this.posts[index].title),
                  subtitle: Text(this.posts[index].description),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShowScreen(this.posts[index])),
                    );
                  },
                ),
                Divider(),
              ],
            );
          },
        ),
      ),
    );
  }
}
