import 'package:flutter/material.dart';

class InfoPeli extends StatelessWidget {
  final VerticalDivider _verticalDivider = const VerticalDivider(
    color: Colors.white,
    indent: 9.0,
    endIndent: 8.0,
    thickness: 3.0,
    width: 10,
  );

  final TextStyle _textStyle = const TextStyle(color: Colors.white70);
  const InfoPeli({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 370.0,
          decoration: const BoxDecoration(
            color: Colors.blueGrey,
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/fPJWlhXA2VXf4MlQ3JenVsz1iba.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 1000.0,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.6),
                    ],
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Drama", style: _textStyle),
                      _verticalDivider,
                      Text("Accion", style: _textStyle),
                      _verticalDivider,
                      Text("Aventura", style: _textStyle),
                      _verticalDivider,
                      Text("Fantasia", style: _textStyle),
                      _verticalDivider,
                      Text("Comedia", style: _textStyle),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
