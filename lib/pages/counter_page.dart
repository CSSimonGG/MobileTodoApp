import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  // Counter int
  int _counter = 0;

  // Method
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text above counter
            Text("Counter:"),

            // Counter
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 48),
            ),

            // Increment button
            ElevatedButton(
                onPressed: _incrementCounter,
                child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
