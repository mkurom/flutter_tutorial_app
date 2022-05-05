import 'package:flutter/material.dart';

import 'package:tutorial_app/views/pages/statefull_widget_page/countup_statefull.dart';
import 'package:tutorial_app/views/pages/stateless_widget_page/countup_stateless.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(null, 'Flutter Demo Home Page'),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // const MyHomePage(
  //   Key? key,
  //   this.title,
  // ) : super(key: key);

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CountupPageWithStateful(),
                  ),
                );
              },
              child: const Text('StatefulWidget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CountupPageWithStateless(),
                  ),
                );
              },
              child: const Text('StatelessWidget'),
            ),
          ],
        ),
      ),
    );
  }
}
