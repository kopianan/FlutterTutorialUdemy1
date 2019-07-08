import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var counterIndex = 0 ; 


  void pressedButton (){
    counterIndex = counterIndex + 1 ;
  }


  @override
  Widget build(BuildContext context) {
    var arrayQuestions = [
      "Nama kesuaan saya adalah ? ", 
      "HAHAHAH mau aja dibohongin ? "
    ]
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Judul"),
        ),
        body: Column(
          children: <Widget>[
            Text(arrayQuestions[counterIndex]),
            RaisedButton(
              child: Text("Button 1"),
              onPressed: pressedButton,
            ),
              RaisedButton(
              child: Text("Button 2"),
              onPressed: pressedButton,
            ),
              RaisedButton(
              child: Text("Button 3"),
              onPressed: pressedButton,
            ),
          ],
        ),
      ),
    );
  }
}
