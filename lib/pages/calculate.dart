import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khunit/config/env.dart';
import 'package:khunit/models/option.dart';
import 'package:khunit/models/unit.dart';

class CalculateScreen extends StatefulWidget {
  final Unit unit;

  const CalculateScreen({Key key, this.unit}) : super(key: key);
  _CalculateScreenState createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  Option _fromOption;
  Option _toOption;

  @override
  void initState() {
    super.initState();
    if (widget.unit != null &&
        widget.unit.option != null &&
        widget.unit.option.length > 0) {
      _fromOption = widget.unit.option[0];
      _toOption = widget.unit.option[0];
      print(_fromOption.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Env.primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.unit.name),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Material(
                    elevation: 1.0,
                    borderRadius: BorderRadius.circular(8.0),
                    color: Env.secondaryColor,
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Env.secondaryColor,
                      ),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                "ធ្វើការប្តូរពី",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: "KhmerBattambangBold",
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 80.0,
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children:
                                    widget.unit.option.map((Option option) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _fromOption = option;
                                      });
                                    },
                                    child: Container(
                                      height: 60.0,
                                      padding: EdgeInsets.only(
                                        left: 26.0,
                                        right: 26.0,
                                      ),
                                      margin: EdgeInsets.only(
                                        right: 16.0,
                                      ),
                                      decoration: (() {
                                        if (_fromOption != null &&
                                            _fromOption.id == option.id) {
                                          return BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                            gradient: LinearGradient(
                                              begin: Alignment(0, 1),
                                              end: Alignment(-1, 0),
                                              colors: [
                                                Color(0xFF645feb),
                                                Color(0xFF6135c6),
                                              ],
                                            ),
                                          );
                                        } else {
                                          return BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                            gradient: LinearGradient(
                                              begin: Alignment(0, 1),
                                              end: Alignment(-1, 0),
                                              colors: [
                                                Color(0xFF00849e),
                                                Color(0xFF22aea4),
                                              ],
                                            ),
                                          );
                                        }
                                      })(),
                                      child: Center(
                                        child: Text(
                                          option.name,
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontFamily: "KhmerBattambangBold",
                                            fontSize: 18.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            Container(
                              child: Text(
                                "ទៅជា",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: "KhmerBattambangBold",
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 80.0,
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children:
                                    widget.unit.option.map((Option option) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _toOption = option;
                                      });
                                    },
                                    child: Container(
                                      height: 60.0,
                                      padding: EdgeInsets.only(
                                        left: 26.0,
                                        right: 26.0,
                                      ),
                                      margin: EdgeInsets.only(
                                        right: 16.0,
                                      ),
                                      decoration: (() {
                                        if (_toOption != null &&
                                            _toOption.id == option.id) {
                                          return BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                            gradient: LinearGradient(
                                              begin: Alignment(0, 1),
                                              end: Alignment(-1, 0),
                                              colors: [
                                                Color(0xFF645feb),
                                                Color(0xFF6135c6),
                                              ],
                                            ),
                                          );
                                        } else {
                                          return BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                            gradient: LinearGradient(
                                              begin: Alignment(0, 1),
                                              end: Alignment(-1, 0),
                                              colors: [
                                                Color(0xFF00849e),
                                                Color(0xFF22aea4),
                                              ],
                                            ),
                                          );
                                        }
                                      })(),
                                      child: Center(
                                        child: Text(
                                          option.name,
                                          style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 18.0,
                                            fontFamily: "KhmerBattambangBold",
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      gradient: LinearGradient(
                        begin: Alignment(0, -1),
                        end: Alignment(0, 1),
                        colors: [
                          Color(0xFF645feb),
                          Color(0xFF6135c6),
                        ],
                      ),
                    ),
                    child: Icon(
                      FontAwesomeIcons.syncAlt,
                      size: 20.0,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.symmetric(vertical: 32.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    gradient: LinearGradient(
                      begin: Alignment(1, 0),
                      end: Alignment(-1, 0),
                      colors: [
                        Color(0xFF645feb),
                        Color(0xFF6135c6),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "700,000,000.00",
                      style: TextStyle(
                        fontFamily: "Crasng",
                        color: Colors.white,
                        fontSize: 32.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
