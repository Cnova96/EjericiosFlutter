import 'package:ejericio3_cuadricula/models/info.dart';
import 'package:ejericio3_cuadricula/row_cus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ejercicio #3 Cuadricula",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ejericio 3"),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(child: RowCus(rows1)),
              Expanded(child: RowCus(rows2)),
              Expanded(child: RowCus(rows3)),
            ],
          ),
        ),
      ),
    );
  }
}
