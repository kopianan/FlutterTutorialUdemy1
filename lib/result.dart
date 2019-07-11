import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int sumScore;
  final Function resetHandler;

  Result(this.sumScore, this.resetHandler);

  String get getResultScore {
    String resultText;

    if (sumScore < 30) {
      resultText = "Buruk";
    } else if (sumScore < 60) {
      resultText = "Lumayan";
    } else if (sumScore < 80) {
      resultText = "Bagus ";
    } else {
      resultText = "Edan!!!!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "$getResultScore \n your score is $sumScore",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text("Reset Quiz"),
            textColor: Colors.black,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
