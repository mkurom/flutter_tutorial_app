import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CountupPageWithStateful extends StatefulWidget {
  const CountupPageWithStateful({Key? key}) : super(key: key);

  @override
  State<CountupPageWithStateful> createState() => _CountupPageState();
}

class _CountupPageState extends State<CountupPageWithStateful> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('build app');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Up App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
