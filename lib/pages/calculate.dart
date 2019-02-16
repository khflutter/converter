import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khunit/config/kh_unit_env.dart';

class CalculateScreen extends StatefulWidget {
  final String title;

  const CalculateScreen({Key key, this.title}) : super(key: key);
  _CalculateScreenState createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  List _cities = [
    "Cluj-Napoca",
    "Bucuresti",
    "Timisoara",
    "Brasov",
    "Constanta"
  ];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;

  @override
  void initState() {
    super.initState();
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = List();
    for (String city in _cities) {
      items.add(DropdownMenuItem(value: city, child: Text(city)));
    }
    return items;
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentCity = selectedCity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Env.primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.title),
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
                                "Option 01",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 80.0,
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: List.generate(100, (item) {
                                  return Container(
                                    height: 60.0,
                                    padding: EdgeInsets.only(
                                      left: 26.0,
                                      right: 26.0,
                                    ),
                                    margin: EdgeInsets.only(
                                      right: 16.0,
                                    ),
                                    decoration: BoxDecoration(
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
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Sergei Gurov",
                                        style: TextStyle(
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Option 01",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 80.0,
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: List.generate(100, (item) {
                                  return Container(
                                    height: 60.0,
                                    padding: EdgeInsets.only(
                                      left: 26.0,
                                      right: 26.0,
                                    ),
                                    margin: EdgeInsets.only(
                                      right: 16.0,
                                    ),
                                    decoration: BoxDecoration(
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
                                    ),
                                    child: Center(
                                      child: Text(
                                        "KPc MIw ojN Rym p6V QLY",
                                        style: TextStyle(
                                          color: Colors.white70,
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
                  height: 400.0,
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
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
