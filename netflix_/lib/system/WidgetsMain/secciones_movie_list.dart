import 'package:flutter/material.dart';
import 'package:netflix_/system/models/Peliculas.dart';

class SeccionesMovieList extends StatefulWidget {
  Map<String, List<String>> _secciones = {};

  SeccionesMovieList(
    this._secciones, {
    Key? key,
  }) : super(key: key);

  @override
  State<SeccionesMovieList> createState() => _SeccionesMovieListState();
}

class _SeccionesMovieListState extends State<SeccionesMovieList> {
  _showModalBottomSheet(BuildContext context, Map infoPeli) {
    print(infoPeli);
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => Container(
        height: 230.0,
        decoration: const BoxDecoration(
          color: Color(0xff1c1c1c),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 190.0,
              width: 130.0,
              margin: const EdgeInsets.only(top: 15.0, right: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(infoPeli["portada"]),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 160.0,
                      child: Text(
                        infoPeli["title"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                        softWrap: true,
                      ),
                    ),
                    Center(
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.grey,
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.close),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: SizedBox(
                    width: 210.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          infoPeli["duracion"],
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: SizedBox(
                        height: 160.0,
                        width: 210.0,
                        child: Text(
                          infoPeli["Descripcion"],
                          //"aa",
                          //"Remake de 'El experimento', dirigida en 2001 por Oliver Hirschbiegel. Un grupo de 26 hombres son sometidos a una investigación psiquiátrica con roles de prisionero y guardián, pero el estudio finalmente no se desarrollará como pensaban y acabará en el caos.",
                          maxLines: 10,
                          style: const TextStyle(color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
    /* showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => Container(
        height: 600.0,
        child: Column(
          children: [
            const Text(
              "prueba",
              style: TextStyle(fontSize: 20.0),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Ok"),
            ),
          ],
        ),
      ),
    ); */
  }

  List<Widget> _showSecciones(Map<String, List<String>> _seccioness) {
    final Peliculas _peliculas = Peliculas();

    List<Widget> seccionesMovieHome = [];

    _seccioness.forEach((key, value) {
      seccionesMovieHome.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              key,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: value.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      _showModalBottomSheet(
                          context, _peliculas.detailMovie[key]![index]);
                      //print(_peliculas.detailMovie[key]![index]);
                    },
                    child: Container(
                      height: 150.0,
                      width: 120.0,
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(value[index]),
                        ),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    });

    return seccionesMovieHome;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      width: 1000.0,
      padding: const EdgeInsets.only(top: 25.0),
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _showSecciones(widget._secciones),
      ),
    );
  }
}
