import 'package:flutter/material.dart';
import 'package:fluuter_tutorial_udemy_1/transaction.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Transaction> transaction = [
    Transaction(amount: 12, title: "Title1", date: DateTime.now(), id: "34"),
    Transaction(amount: 15, title: "Title2", date: DateTime.now(), id: "65"),
    Transaction(amount: 13, title: "Title3", date: DateTime.now(), id: "4"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('MyFirstApp'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                child: Card(
                  child: Text("CHART"),
                  color: Colors.blue,
                  elevation: 5,
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(decoration: InputDecoration(labelText: 'Amount')), 
                      TextField(decoration: InputDecoration(labelText: 'Title')), 
                      FlatButton(child: Text("Add Record Here"),
                      onPressed: (){},
                      textColor: Colors.purple,)
                    ],
                  ),
                ),
              ),
              Column(
                children: transaction.map((tx) {
                  return Card(
                      child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.blue,
                          width: 1,
                          style: BorderStyle.solid,
                        )),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Container(
                          child: Text(
                            tx.amount.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tx.title,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(DateFormat("EEEE, dd-MMMM-yyyy, hh-mm")
                              .format(tx.date))
                        ],
                      )
                    ],
                  ));
                }).toList(),
              ),
            ],
          )),
    );
  }
}
