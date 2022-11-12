import 'package:flutter/material.dart';
import './mainFraime.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF00583f),
          body: MyApp(),
          appBar: AppBar(
            title: Align(
              alignment: Alignment.center,
              child: Text(
                "Вопросики",
                style: TextStyle(color: Color(0xFFBEBEBE)),
              ),
            ),
            backgroundColor: Color(0xFF580019),
          ))));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _name = "Tom";

  _changeName(String text) {
    setState(() => _name = text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
        child: Align(
          alignment: Alignment.center,
          child: Column(children: [
            Text("Имя пользователя: $_name",
                style: TextStyle(fontSize: 22, color: Color(0xFFBEBEBE))),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF580019)))),
                style: TextStyle(fontSize: 22, color: Color(0xFFBEBEBE)),
                onSubmitted: _changeName,
                maxLength: 30,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainFraime()));
              }),
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text("Перейти к опросу")),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xFF580019))),
            )
          ]),
        ));
  }
}
