import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  double _marginContainer = 5.0;
  double _widthBox = 100.0;
  double _heightBox = 120.0;
  double _borderRadiusSize = 4.0;

  TextStyle textStyle = TextStyle(
    fontFamily: "KhmerM1",
    fontSize: 18,
    color: Color(0xFFD8D8D8),
  );

  BoxDecoration boxDecoration = BoxDecoration(color: Color(0xFF202C36), borderRadius: BorderRadius.circular(4.0));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF595C66),
                    borderRadius: BorderRadius.circular(_borderRadiusSize)
                  ),
                  margin: EdgeInsets.all(_marginContainer),
                  child: Center(
                    child: Text(
                      "ចំណុះ",
                      style: textStyle,
                    ),
                  ),
                  height: _heightBox,
                  width: _widthBox,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: boxDecoration,
                  margin: EdgeInsets.all(_marginContainer),
                  child: Center(
                    child: Text(
                      "ប្រវែង",
                      style: textStyle,
                    ),
                  ),
                  height: _heightBox,
                  width: _widthBox,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    decoration: boxDecoration,
                    margin: EdgeInsets.all(_marginContainer),
                    child: Center(
                      child: Text(
                        "ទង្ងន់",
                        style: textStyle,
                      ),
                    ),
                    height: _heightBox,
                    width: _widthBox),
              ),
              Expanded(
                child: Container(
                  decoration: boxDecoration,
                  margin: EdgeInsets.all(_marginContainer),
                  child: Center(
                    child: Text(
                      "ស្លឹក",
                      style: textStyle,
                    ),
                  ),
                  height: _heightBox,
                  width: _widthBox,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(_marginContainer),
                  decoration: boxDecoration,
                  child: Center(
                    child: Text(
                      "ចំនួន​",
                      style: textStyle,
                    ),
                  ),
                  height: _heightBox,
                  width: _widthBox,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(_marginContainer),
                  decoration: boxDecoration,
                  child: Center(
                    child: Text(
                      "ផ្សេងៗ",
                      style: textStyle,
                    ),
                  ),
                  height: _heightBox,
                  width: _widthBox,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
