// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SeccionButtonsInformationPlayMylist extends StatefulWidget {
  SeccionButtonsInformationPlayMylist({
    Key? key,
  }) : super(key: key);

  @override
  State<SeccionButtonsInformationPlayMylist> createState() =>
      _SeccionButtonsInformationPlayMylistState();
}

class _SeccionButtonsInformationPlayMylistState
    extends State<SeccionButtonsInformationPlayMylist> {
  _showSnackbar(String text) {
    final SnackBar _snackBar = SnackBar(
      duration: const Duration(milliseconds: 350),
      content: Text(text),
    );
    ScaffoldMessenger.of(context).showSnackBar(_snackBar);
  }

  final TextStyle _textStyle =
      const TextStyle(color: Colors.white, fontSize: 12.0);

  IconData _iconButonMyList = Icons.add;
  bool _iconButonMyListChange = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (_iconButonMyListChange) {
                      _iconButonMyListChange = !_iconButonMyListChange;
                      _iconButonMyList = Icons.add;
                    } else {
                      _iconButonMyListChange = !_iconButonMyListChange;
                      _iconButonMyList = Icons.check;
                    }
                    _showSnackbar(_iconButonMyListChange
                        ? "Se agrego a mi lista"
                        : "Se quito de mi lista");
                  });
                },
                icon: Icon(
                  _iconButonMyList,
                  color: Colors.white,
                  size: 17.0,
                ),
              ),
              Text(
                "Mi lista",
                style: _textStyle,
              ),
            ],
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow),
            label: const Text("Reproducir"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.info,
                  color: Colors.white,
                  size: 17.0,
                ),
              ),
              Text(
                "Información",
                style: _textStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
