import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Belajar Flutter'),
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
  var _counter = 12.0;
  var munculin = true;
  String namaku = "M Gibran";
  // ignore: non_constant_identifier_names
  void Muncul() {
    setState(() {
      munculin = !munculin;
      if (munculin) {
        namaku = "M Gibran";
      } else {
        namaku = "danang";
      }
    });
  }

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
            Text(
              "Ukuran font ini $_counter",
              style: TextStyle(fontSize: _counter),
            ),
            Text(
              namaku,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            onPressed: Muncul,
            tooltip: 'Refresh',
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'increment',
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
