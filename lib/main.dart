import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _counterIndex = 0;
  var _arrayQuestions = [
    {
      "questionText": "Warna Kesukaan ? ",
      "answer": [
        {"text": "merah", "score": 20},
        {"text": "Biru", "score": 10},
        {"text": "merah", "score": 5},
        {"text": "merah", "score": 30},
      ]
    },
    {
      "questionText": "Hewan Kesukaan ? ",
      "answer": [
        {"text": "kucing", "score": 20},
        {"text": "merpati", "score": 10},
        {"text": "semut", "score": 5},
        {"text": "gajah", "score": 30},
      ]
    },
    {
      "questionText": "HP Kesukaan  ? ",
      "answer": [
        {"text": "xiaomi", "score": 20},
        {"text": "nokia", "score": 10},
        {"text": "sony", "score": 5},
        {"text": "samsung", "score": 30},
      ]
    },
  ];

  var _totalScore = 0 ; 

  void _pressedButton(int score ) {
    _totalScore += score ; 

    setState(() {
      _counterIndex = _counterIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Judul"),
        ),
        body: _counterIndex < _arrayQuestions.length
            ? Quiz(
                questionArray: _arrayQuestions,
                clickButton: _pressedButton,
                index: _counterIndex,
              )
            : Result(sumScore: _totalScore,),
      ),
    );
  }
}
