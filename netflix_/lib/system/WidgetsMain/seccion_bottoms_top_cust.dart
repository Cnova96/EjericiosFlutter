import 'package:flutter/material.dart';

class SeccionButtonsCust extends StatefulWidget {
  const SeccionButtonsCust({
    Key? key,
  }) : super(key: key);

  @override
  State<SeccionButtonsCust> createState() => _SeccionButtonsCust();
}

class _SeccionButtonsCust extends State<SeccionButtonsCust> {
  final ButtonStyle _buttonStyle = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  );

  List city = ['Categorias', 'Accion', 'Drama', "Comedia", "Terror"];
  var valueSelected = 'Categorias';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            style: _buttonStyle,
            child: const Text('Series'),
            onPressed: () {
              onPress();
            },
          ),
          TextButton(
            style: _buttonStyle,
            child: const Text('Películas'),
            onPressed: () {
              onPress();
            },
          ),
          DropdownButton(
            style: const TextStyle(color: Colors.white),
            dropdownColor: Colors.black,
            underline: Container(
              decoration:
                  const BoxDecoration(border: Border(bottom: BorderSide.none)),
            ),
            value: valueSelected,
            onChanged: (value) {
              setState(() {
                valueSelected = value.toString();
              });
            },
            items: city.map((item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

void onPress() {}
