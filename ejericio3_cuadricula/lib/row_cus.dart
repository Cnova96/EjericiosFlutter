import 'package:ejericio3_cuadricula/models/info.dart';
import 'package:flutter/material.dart';

class RowCus extends StatelessWidget {
  List<Info> rows;

  RowCus(
    this.rows, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Card(
            child: Row(
              children: [
                Image.asset(
                  rows[0].imagesUrl,
                  height: 30.0,
                  width: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(rows[0].text),
                ),
              ],
            ),
            shadowColor: Colors.amber,
            elevation: 5.0,
            color: Colors.blueAccent,
            margin: const EdgeInsets.all(6.0),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Container(
                transform: Matrix4.diagonal3Values(1, 1, 3),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 0.10,
                      blurRadius: 20.0,
                      offset: Offset(5, 1),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  maxRadius: 45.0,
                  child: Row(
                    children: [
                      Text(
                        rows[1].text,
                        style: const TextStyle(fontSize: 12.0),
                      ),
                      Image.asset(
                        rows[1].imagesUrl,
                        height: 30.0,
                        width: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            margin: const EdgeInsets.all(6.0),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
            child: Image.asset(rows[2].imagesUrl),
          ),
        ),
      ],
    );
  }
}
