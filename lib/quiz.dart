import 'package:flutter/material.dart';
import './question.dart'; 
import './answer.dart'; 


class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questionArray; 
  final Function clickButton; 
  final int index ; 

  Quiz({@required this.questionArray, @required this.clickButton, @required this.index});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionArray[index]["questionText"]),
        ...(questionArray[index]["answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(()=>clickButton(answer["score"]), answer["text"]);
        }).toList(),
      ],
    );
  }
}
