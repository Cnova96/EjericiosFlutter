import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hola Mundo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Contador"),
        ),
        body: Center(
          child: Column(
            children: const [
              Text("El contador va por: "),
              Text("0"),
            ],
          ),
        ),
      ),
    );
  }
}
