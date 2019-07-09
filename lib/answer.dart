import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedButton ; 
  String buttonName; 

  Answer(this.selectedButton, this.buttonName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(buttonName),
        textColor: Colors.white,
        onPressed: selectedButton,
        color: Colors.blue,
      ),
    );
  }
}
