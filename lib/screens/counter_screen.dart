import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    TextStyle size = const TextStyle(fontSize: 30);
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        elevation: 14,
        title: const Text(
          'Counter Screen',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Numero de clics',
              style: (size),
            ),
            Text(
              '$count',
              style: (size),
            )
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_circle_outline),
        onPressed: () {
          print(count);
          count++;
          setState(() {});
        },
        backgroundColor: const Color.fromARGB(255, 86, 17, 170),
      ),
    );
  }
}
