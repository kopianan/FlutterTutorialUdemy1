import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int sumScore ; 

  Result({@required this.sumScore})

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("You Did it ! \n your score is $sumScore"),
    );
  }
}
