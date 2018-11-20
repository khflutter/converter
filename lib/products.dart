import 'package:flutter/material.dart';

class Product extends StatelessWidget {

  final List<String> products;

  Product(this.products);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: products
          .map((ele) => Card(
                child: Column(
                  children: <Widget>[Image.asset("assets/food.jpg"), Text(ele)],
                ),
              ))
          .toList(),
    );
  }
}
