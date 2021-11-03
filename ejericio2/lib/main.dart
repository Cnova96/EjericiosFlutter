/// Usar material
/// un appBar de color verde que tenga un texto "Ejericico"
/// que tenga un contenedor centrado de color rojo con un borde de 15px a todos los lados
/// con borde amarillo y sombra negra
/// de tamaño que uds quieran
/// con un hijo TExt de tamaño 17px color blanco, con linea punteada
import "package:flutter/material.dart";

void main() {
  runApp(const PantallaEjericio());
}

class PantallaEjericio extends StatelessWidget {
  const PantallaEjericio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EJericio",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ejericio"),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Colors.yellow,
                  width: 15.0,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(3.0, 4.0),
                    blurRadius: 2.0,
                  ),
                ]),
            width: 250.0,
            height: 250.0,
            child: const Text(
              "Ejercicio",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
