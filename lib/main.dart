import 'package:flutter/material.dart';
import 'transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Transaction> transactions = [
    Transaction(
      id: UniqueKey().toString(),
      title: "new shoes",
      amountInPennies: 7999,
    ),
    Transaction(
      id: UniqueKey().toString(),
      title: 'groceries',
      amountInPennies: 8876,
    )
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('foo'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Card(
                color: Colors.amber,
                elevation: 5.0,
                child: Container(
                  width: double.infinity,
                  child: Text('chart'),
                ),
              ),
              Card(
                child: Container(
                  child: Text('transaction list'),
                ),
              ),
            ],
          )),
    );
  }
}
