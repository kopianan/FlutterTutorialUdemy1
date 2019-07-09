import 'package:flutter/material.dart';

import './question.dart';

import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var counterIndex = 0;

  void pressedButton() {
    setState(() {
      counterIndex = counterIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var arrayQuestions = [
      "Nama kesuaan saya adalah ? ",
      "HAHAHAH mau aja dibohongin ? "
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Judul"),
        ),
        body: Column(
          children: <Widget>[
            Question(arrayQuestions[counterIndex]),
            Answer(pressedButton, "Button 1"),
            Answer(pressedButton, "Button 2"),
            Answer(pressedButton, "Button 3"),
          ],
        ),
      ),
    );
  }
}
