import 'package:flutter/material.dart';
import 'package:loadmore/loadmore.dart';


class Main extends StatefulWidget {
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  List<int> list;
  int count = 1000;

  @override
  void initState() {
    super.initState();
    setState(() {
      List.generate(100, (item){
        list.add(item);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("E-Converter"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
        child: LoadMore(
          isFinish: count >= 60,
          onLoadMore: _loadMore,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Text(list[index].toString()),
                height: 40.0,
                alignment: Alignment.center,
              );
            },
            itemCount: count,
          ),
        ),
      ),
      ),
    );
  }
  Future<bool> _loadMore() async {
    print("onLoadMore");
    await Future.delayed(Duration(seconds: 0, milliseconds: 100));
    // load();
    return true;
  }
}
