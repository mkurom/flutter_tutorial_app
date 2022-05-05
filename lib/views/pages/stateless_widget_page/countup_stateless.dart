import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CountupPageWithStateless extends StatelessWidget {
  const CountupPageWithStateless({Key? key}) : super(key: key);

  // StatelessWidgetでは、可変の変数をフィールドに持てないので、final を int or varにすると、エラーになる。
  final _counter = 0;

  void _incrementCounter() {
    // _counter++;
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
