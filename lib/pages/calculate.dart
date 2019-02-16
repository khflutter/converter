import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khunit/config/kh_unit_env.dart';

class CalculateScreen extends StatefulWidget {
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
        title: Text("Calculate"),
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
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Material(
                              elevation: 4.0,
                              color: Env.secondaryLightColor,
                              borderRadius: BorderRadius.circular(8.0),
                              child: Container(
                                // padding: EdgeInsets.all(8.0),
                                child: TextFormField(
                                  initialValue: "0.00",
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    fontFamily: "Crasng",
                                    fontSize: 32,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: InputBorder.none,
                                  ),
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              child: Material(
                                child: InkWell(
                                  child: DropdownButtonHideUnderline(
                                    child: ButtonTheme(
                                      alignedDropdown: true,
                                      padding: EdgeInsets.all(16.0),
                                      child: DropdownButton(
                                        style: TextStyle(
                                          fontFamily: "Crasng",
                                          color: Colors.black,
                                        ),
                                        value: _currentCity,
                                        items: _dropDownMenuItems,
                                        onChanged: changedDropDownItem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Center(
                                child: Icon(
                                  FontAwesomeIcons.syncAlt,
                                  color: Colors.white,
                                  size: 32.0,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              child: Material(
                                child: InkWell(
                                  child: DropdownButtonHideUnderline(
                                    child: ButtonTheme(
                                      alignedDropdown: true,
                                      padding: EdgeInsets.all(16.0),
                                      child: DropdownButton(
                                        style: TextStyle(
                                          fontFamily: "Crasng",
                                          color: Colors.black,
                                        ),
                                        value: _currentCity,
                                        items: _dropDownMenuItems,
                                        onChanged: changedDropDownItem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    color: Env.secondaryColor,
                    onPressed: () {},
                    child: Text(
                      "Convert".toUpperCase(),
                      style: TextStyle(
                        color: Env.secondaryTextColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
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
