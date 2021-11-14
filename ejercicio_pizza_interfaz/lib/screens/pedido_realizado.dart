import 'dart:ffi';

import 'package:flutter/material.dart';

class PedidoRealizado extends StatefulWidget {
  const PedidoRealizado({Key? key}) : super(key: key);

  @override
  State<PedidoRealizado> createState() => _PedidoRealizadoState();
}

class _PedidoRealizadoState extends State<PedidoRealizado> {
  var parametros;

  Widget _orden(List<String?> ingre) {
    String ingredientes = ingre.join(",");

    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          const TextSpan(
            text: "Orden: pizza de tamaño ",
            style: TextStyle(fontSize: 12.0),
          ),
          TextSpan(
            text: parametros["pedido"].getSize,
            style: TextStyle(fontSize: 12.0),
          ),
          const TextSpan(
            text: " con los siguiente ingredientes : ",
            style: TextStyle(fontSize: 12.0),
          ),
          TextSpan(
            text: ingredientes,
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    parametros = ModalRoute.of(context)!.settings.arguments;
    /* print("parametros " + parametros["pedido"].getNombre); */
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Pedido Realizado"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 150.0,
              child: Card(
                child: Column(
                  children: [
                    Text("Cliente: " +
                        parametros["pedido"].getNombre +
                        " " +
                        parametros["pedido"].getApellido),
                    Text("Telefono: " + parametros["pedido"].getTelefono),
                    _orden(parametros["pedido"].getIngredientes),
                  ],
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "home");
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text("Realizar otro pedido"),
            )
          ],
        ),
      ),
    );
  }
}
