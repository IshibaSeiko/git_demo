import 'package:flutter/material.dart';
import 'package:git_demo_app/int_helper.dart';

void main() {
  runApp(const MyApp());
}

/// アプリトップページ
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Git説明用アプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '👇現在のカウント👇',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () => setState(() {
                          _counter = _counter.decrement();
                        }),
                    icon: const Icon(Icons.minimize)),
                IconButton(
                    onPressed: () => setState(() {
                          _counter = _counter.increment();
                        }),
                    icon: const Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
