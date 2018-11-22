import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:khunit/models/todo.dart';
import 'list_todos_item.dart';
import 'list_todos.dart';
import './../pages/about.dart';

class NewTodoItemTab extends StatefulWidget {
  @override
  _NewTodoItemTabState createState() => _NewTodoItemTabState();
}

class _NewTodoItemTabState extends State<NewTodoItemTab> {
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
            decoration: InputDecoration(labelText: "Title"),
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
            decoration: InputDecoration(labelText: "Description"),
            maxLines: 8,
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
                Todo newTodo = new Todo(this._title, this._description);
                todos.add(newTodo);
                _titleCtrl.clear();
                _descCtrl.clear();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListTodos(todos)));
              },
              child: Text("Add New Todo"),
            ),
          ),
          RaisedButton(
            child: Text("Fetch Data"),
            onPressed: () {
              http.get('http://127.0.0.1:8000/')
              .then((http.Response response) {
                json.decode(response.body).forEach((ele) {
                  todos.add(Todo(ele['name'], ele['email']));
                });
              });
            },
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AboutPage("About Us", "Custom Description..."),
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
