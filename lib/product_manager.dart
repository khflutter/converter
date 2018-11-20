import 'package:flutter/material.dart';

import './products.dart';
import './pages/about.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ["ABC"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        _products.add("New Product Name");
                        print(_products);
                      });
                    },
                    child: Text("Add Product"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutPage())
                      );
                    },
                    child: Text("Go About Page"),
                  )
                ],
              )),
          Expanded(
            child: Product(_products),
          )
        ],
      ),
    );
  }
}
