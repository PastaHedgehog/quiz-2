import 'package:flutter/material.dart';
import './main.dart';

class Person extends StatefulWidget {
  @override
  _PersonState createState() => _PersonState();
}

class _PersonState extends State<Person> {
  String _name = "Tom";

  _changeName(String text) {
    setState(() => _name = text);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Имя пользователя: $_name", style: TextStyle(fontSize: 22)),
      TextField(style: TextStyle(fontSize: 22), onSubmitted: _changeName)
    ], crossAxisAlignment: CrossAxisAlignment.start);
  }
}
