import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pildoras",
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  BoxDecoration decoration = BoxDecoration(
      color: Colors.blue,
      borderRadius: const BorderRadius.all(Radius.circular(25.0)),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.7),
          blurRadius: 10.0,
          offset: Offset(4, 4),
          spreadRadius: 0.1,
        )
      ]);

  TextStyle textStyle = const TextStyle(
    color: Colors.white,
  );

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Pildora(
                  widthCust: 200.0,
                  heightCust: 150.0,
                  texto: "primera",
                  boxDecoration: decoration,
                  textStyle: textStyle,
                ),
                Pildora(
                  widthCust: 200.0,
                  heightCust: 150.0,
                  texto: "Segunda",
                  boxDecoration: decoration.copyWith(
                    color: Colors.yellow,
                    borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  ),
                  textStyle: textStyle,
                ),
                Pildora(
                  widthCust: 200.0,
                  heightCust: 150.0,
                  texto: "Tercera",
                  boxDecoration: decoration.copyWith(color: Colors.red),
                  textStyle: textStyle,
                ),
                Pildora(
                  widthCust: 200.0,
                  heightCust: 150.0,
                  texto: "Cuarta",
                  boxDecoration: decoration.copyWith(color: Colors.amber),
                  textStyle: textStyle.copyWith(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Pildora extends StatelessWidget {
  late String texto;
  late BoxDecoration boxDecoration;
  late double widthCust;
  late double heightCust;
  late TextStyle textStyle;

  Pildora(
      {required this.widthCust,
      required this.heightCust,
      required this.boxDecoration,
      required this.texto,
      required this.textStyle,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      width: widthCust,
      height: heightCust,
      decoration: boxDecoration,
      child: Center(
        child: Text(texto, style: textStyle),
      ),
    );
  }
}
