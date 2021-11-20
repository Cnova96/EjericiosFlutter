import 'package:flutter/material.dart';
import 'package:netflix_/system/WidgetsMain/Seccion_buttons_information_play_mylist.dart';
import 'package:netflix_/system/WidgetsMain/info_peli.dart';
import 'package:netflix_/system/WidgetsMain/seccion_bottoms_top_cust.dart';
import 'package:netflix_/system/WidgetsMain/secciones_movie_list.dart';
import 'package:netflix_/system/models/Peliculas.dart';

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Peliculas _peliculas = Peliculas();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SeccionButtonsCust(),
        const InfoPeli(),
        SeccionButtonsInformationPlayMylist(),
        SeccionesMovieList(_peliculas.secciones),
      ],
    );
  }
}
