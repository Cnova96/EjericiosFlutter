import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Hola mundo personalizado", home: Home());
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola Mundo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("El contador va en: "),
            Text("$_count"),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: decrementCount,
            child: const Icon(
              Icons.minimize,
            ),
          ),
          FloatingActionButton(
            onPressed: restorCount,
            child: const Icon(
              Icons.restore,
            ),
          ),
          FloatingActionButton(
            onPressed: incrementCount,
            child: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
    );
  }

  void incrementCount() {
    setState(() {
      _count++;
    });
  }

  void decrementCount() {
    setState(() {
      if (_count != 0) _count--;
    });
  }

  void restorCount() {
    setState(() {
      _count = 0;
    });
  }
}
