import 'package:flutter/material.dart';
import 'package:khunit/config/kh_unit_env.dart';
import 'package:khunit/models/post.dart';
import 'package:khunit/pages/show.dart';
import 'package:khunit/widgets/drawer.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(KhUnitEnv.appName),
      ),
      drawer: MyDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: KhUnitEnv.meunItems.map((MenuItem menuItem) {
          return GestureDetector(
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowScreen(
                            post: Post(
                              menuItem.id,
                              menuItem.title,
                              menuItem.title,
                            ),
                          ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffE1E2E1),
                    ),
                    color: Color(0xffE1E2E1),
                  ),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        menuItem.icon,
                        color: Color(0xff484b5b),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        menuItem.title,
                        style: TextStyle(
                          fontFamily: KhUnitEnv.fontFamilyTitle,
                          color: Color(0xff484b5b),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
