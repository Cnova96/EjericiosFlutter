import 'package:ejercicio_pizza_interfaz/models/pedido.dart';
import 'package:ejercicio_pizza_interfaz/screens/pedido_realizado.dart';
import 'package:flutter/material.dart';
import 'package:flutter_group_button/flutter_group_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pizza Grafica",
      routes: {
        "home": (context) => OrdenPizza(),
        "pedidoRealizado": (context) => const PedidoRealizado(),
      },
      initialRoute: "home",
    );
  }
}

class OrdenPizza extends StatefulWidget {
  OrdenPizza({Key? key}) : super(key: key);

  @override
  _OrdenPizzaState createState() => _OrdenPizzaState();
}

class _OrdenPizzaState extends State<OrdenPizza> {
  final List<String> _size = ['Pequeña', 'Mediana', 'Grande', 'Extra grande'];
  _showSnackBar() {
    final snackBar = SnackBar(
      content: Row(
        children: const [
          Icon(Icons.thumb_up),
          SizedBox(width: 10.0),
          Text('Compra realizada')
        ],
      ),
      backgroundColor: Colors.blue,
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
        label: 'label',
        onPressed: () {
          print('Di click en label');
        },
        textColor: Colors.white,
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  double rating = 0;
  final Pedido _pedido = Pedido("", "", [], 0.0, "", "pequeña");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Orden Pizza"),
      ),
      body: ListView(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Llene el formulario para la orden",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      size: 30.0,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                    width: 5.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    height: 60.0,
                    width: 200.0,
                    child: TextField(
                      onChanged: (value) {
                        _pedido.setNombre = value;
                      },
                      maxLength: 20,
                      decoration: const InputDecoration(
                        hintText: "Nombre",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      size: 30.0,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                    width: 5.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    height: 60.0,
                    width: 200.0,
                    child: TextField(
                      onChanged: (value) {
                        _pedido.setApellido = value;
                      },
                      maxLength: 20,
                      decoration: const InputDecoration(
                        hintText: "Apellido",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.phone,
                      size: 30.0,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                    width: 5.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    height: 60.0,
                    width: 200.0,
                    child: TextField(
                      onChanged: (value) {
                        _pedido.setTelefono = value;
                      },
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: const InputDecoration(
                        hintText: "Teléfono",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              children: [
                const Text("Tamaño de pizza"),
                RadioGroup(
                  groupItemsAlignment: GroupItemsAlignment.column,
                  children: const [
                    Text('Pequeña'),
                    Text('Mediana'),
                    Text('Grande'),
                    Text('Extra grande'),
                  ],
                  onSelectionChanged: (value) {
                    /* print(_size[value!]); */
                    _pedido.setSize = _size[value!];
                  },
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                const Text("Ingredientes"),
                CheckboxGroup(
                  checkColor: Colors.white,
                  textBeforeCheckbox: false,
                  groupItemsAlignment: GroupItemsAlignment.row,
                  child: {
                    const Text('Peperoni'): false,
                    const Text('piña'): false,
                    const Text('Pollo'): false,
                  },
                  onNewChecked: (value) {
                    _pedido.setIngredientes = value;
                  },
                ),
              ],
            ),
          ),
          /* Card(
              margin: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  const Text("Cantidad de Porciones"),
                  SizedBox(
                    width: 300,
                    child: Slider(
                      value: _pedido.getPorciones,
                      onChanged: (value) {
                        setState(() {
                          _pedido.setPorciones = value;
                        });
                      },
                      divisions: 10,
                      label: _pedido.getPorciones.toString(),
                      min: 0,
                      max: 10,
                    ),
                  ),
                ],
              ),
            ), */
          ElevatedButton.icon(
            onPressed: () {
              /* print(_pedido.toString()); */

              Navigator.pushReplacementNamed(context, "pedidoRealizado",
                  arguments: {"pedido": _pedido});
            },
            icon: const Icon(
              Icons.delivery_dining_outlined,
            ),
            label: const Text("Ordenar"),
          ),
        ],
      ),
    );
  }
}
