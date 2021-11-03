import 'dart:io';

import 'Factura.dart';
import 'Pizza.dart';
import 'Util.dart';

void main() {
  String? pizza = "";
  String? cantidad = "";
  String? size = "";
  print("==========================================");
  print("============ Menu de pizzas ==============");
  print("Digite que pizza quiere");
  print("1. pizza de peperoni");
  print("2. pizza hawaiana");
  print("3. pizza 3 carnes");
  print("==========================================");
  while (pizza == "") {
    print("porfavor digite la opcion que desea: ");
    pizza = stdin.readLineSync();
    if (Util.validarOpcion(pizza)) {
      print("**** Elija una pizza del menu ****");
      pizza = "";
    }
  }
  print("==========================================");
  print("Tamaños Disponible");
  print("1. personal --- 20k");
  print("2. mediana --- 30k");
  print("3. Grande --- 50k");
  print("==========================================");
  while (size == "") {
    print("porfavor digite el tamaño de la pizza que desea: ");
    size = stdin.readLineSync();
    if (Util.validarOpcion(size)) {
      print("**** Elija un tamaño de pizza disponible ****");
      size = "";
    }
  }
  print("==========================================");
  while (cantidad == "") {
    print("porfavor digite la cantidad que desea: ");
    cantidad = stdin.readLineSync();
  }
  print("==========================================");

  Pizza pizzaOrdenada = Pizza(size: size, nombre: pizza);
  Factura factura = Factura(
      0, int.parse(cantidad!), pizzaOrdenada.nombre, pizzaOrdenada.precio);
  factura.calculartotal();
  factura.imprimirFactura();
}
