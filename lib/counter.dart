import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nilai Counter: $counter'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: increment,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text('Tambah Nilai', style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}