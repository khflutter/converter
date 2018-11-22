import 'package:flutter/material.dart';
import 'package:khunit/models/todo.dart';
import 'list_todos_item.dart';
import './../pages/about.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  List<Todo> todos = [];
  String _title = "";
  String _description = "";

  final TextEditingController _titleCtrl = TextEditingController();
  final TextEditingController _descCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: _titleCtrl,
            keyboardType: TextInputType.text,
            onChanged: (String value) {
              setState(() {
                _title = value;
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: _descCtrl,
            onChanged: (String value) {
              setState(() {
                _description = value;
              });
            },
          ),
          Flexible(
            child: RaisedButton(
              onPressed: () {
                todos.add(new Todo(this._title, this._description));
                _titleCtrl.clear();
                _descCtrl.clear();
              },
              child: Text("Add New Todo"),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutPage("About Us", "Custom Description..."),
                  ));
            },
            child: Text("About Us"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos[index].title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListTodosItem(todo: todos[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
