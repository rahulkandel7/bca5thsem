import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  String message = "zero";

  check({required int value}) {
    if (value == 0) {
      message = "zero";
    } else if (value > 0) {
      message = "Positive";
    } else {
      message = "negative";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Our counter value is: $message",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = counter + 1;
                check(value: counter);
              });
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = counter - 1;
                check(value: counter);
              });
            },
            child: Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
