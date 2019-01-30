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
    Post(1, "ការបំបែកប្រវែង",
        "មកមើលរូបថតចាក់ពណ៌ បង្ហាញទិដ្ឋភាពសង្គ្រាមកូរ៉េ កម្របានឃើញពីមុន"),
    Post(2, "ការបំបែកទំហំ",
        "មកមើលរូបថតចាក់ពណ៌ បង្ហាញទិដ្ឋភាពសង្គ្រាមកូរ៉េ កម្របានឃើញពីមុន"),
    Post(3, "ការបំបែកផ្ទៃ",
        "មកមើលរូបថតចាក់ពណ៌ បង្ហាញទិដ្ឋភាពសង្គ្រាមកូរ៉េ កម្របានឃើញពីមុន"),
    Post(4, "ការបំបែកទង្ងន់",
        "មកមើលរូបថតចាក់ពណ៌ បង្ហាញទិដ្ឋភាពសង្គ្រាមកូរ៉េ កម្របានឃើញពីមុន"),
    Post(5, "ការបំបែកមាឌ",
        "មកមើលរូបថតចាក់ពណ៌ បង្ហាញទិដ្ឋភាពសង្គ្រាមកូរ៉េ កម្របានឃើញពីមុន"),
    Post(6, "ការបំបែកកម្ពស់",
        "មកមើលរូបថតចាក់ពណ៌ បង្ហាញទិដ្ឋភាពសង្គ្រាមកូរ៉េ កម្របានឃើញពីមុន"),
    Post(7, "ការបំបែកពេល",
        "មកមើលរូបថតចាក់ពណ៌ បង្ហាញទិដ្ឋភាពសង្គ្រាមកូរ៉េ កម្របានឃើញពីមុន"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                    radius: 30.0,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      this.posts[index].title[0].toString().toUpperCase(),
                      style: TextStyle(
                        fontFamily: "khmerM1",
                        fontSize: 22.0,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  title: Text(
                    this.posts[index].title,
                    style: TextStyle(fontFamily: 'KhmerBattambangBold'),
                  ),
                  subtitle: Text(
                    this.posts[index].description,
                    style: TextStyle(
                      fontFamily: 'KhmerBattambangBold',
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowScreen(this.posts[index])),
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
