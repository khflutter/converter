import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  TextEditingController _ageTextController = TextEditingController();
  TextEditingController _heightTextController = TextEditingController();
  TextEditingController _weightTextController = TextEditingController();

  double _age;
  double _height;
  double _weight;

  double _result = 0.0;

  void _calculateBMI() {
    setState(() {
      this._result = (this._height) / (this._weight * this._weight);
    });
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text("Hello"),
      content: Text(this._result.toString()),
      actions: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Ok",
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI"),
      ),
      body: Container(
        color: Color(0xFFFFFFFF),
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/bmilogo.png'),
              ],
            ),
            Text("Age"),
            TextField(
              keyboardType: TextInputType.number,
              controller: _ageTextController,
              autofocus: true,
              onChanged: (String value) {
                this._age = double.parse(value);
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            Text("Hight"),
            TextField(
              keyboardType: TextInputType.number,
              controller: _heightTextController,
              onChanged: (String value) {
                this._height = double.parse(value);
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            Text("Weight"),
            TextField(
              keyboardType: TextInputType.number,
              controller: _weightTextController,
              onChanged: (String value) {
                this._weight = double.parse(value);
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                      color: Colors.pink,
                      padding: EdgeInsets.all(15.0),
                      onPressed: _calculateBMI,
                      child: Icon(Icons.swap_vert)),
                ),
                Expanded(
                  child: RaisedButton(
                    padding: EdgeInsets.all(15.0),
                    onPressed: () {
                      _ageTextController.clear();
                      _heightTextController.clear();
                      _weightTextController.clear();
                    },
                    child: Icon(Icons.clear),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              "Result of BMI : ${this._result}",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
