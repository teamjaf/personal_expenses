import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final amountController = TextEditingController();
  // String amountInput;
  final titleController = TextEditingController();
  // String titleInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('খরচপাতি'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.white,
              child: Container(
                width: double.infinity,
                child: Text(
                  'Expenses App',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.purple,
                      ),
                ),
                padding: EdgeInsets.all(4),
              ),
              elevation: 10,
            ),
          ),
          UserTransactions()
        ],
      ),
    );
  }
}
