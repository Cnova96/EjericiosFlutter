import 'package:flutter/material.dart';
import 'package:netflix_/system/WidgetsMain/Seccion_buttons_information_play_mylist.dart';
import 'package:netflix_/system/WidgetsMain/bottom_navigator_bar_cust.dart';
import 'package:netflix_/system/WidgetsMain/info_peli.dart';
import 'package:netflix_/system/WidgetsMain/seccion_bottoms_top_cust.dart';
import 'package:netflix_/system/screens/download.dart';
import 'package:netflix_/system/screens/home.dart';
import 'package:netflix_/system/screens/proximamente.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  Widget titulo = const Text("vacio");
  bool visible = true;
  static final List<Widget> _widgetOption = [
    Home(),
    const Proximamente(),
    const Download(),
  ];

  void _titulo(int index, {String? text}) {
    if (index == 0) {
      titulo = Image.asset(
        "assets/images/netflix.png",
        height: 30.0,
        width: 30.0,
      );
    } else {
      titulo = Text(text!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Netflix",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: titulo,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle),
            )
          ],
        ),
        body: _widgetOption[_selectedIndex],
        floatingActionButton: Visibility(
          visible: visible,
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.shuffle,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Inicio",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library,
              ),
              label: "Proximamente",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: "Descargas",
            ),
          ],
          onTap: (int index) {
            setState(() {
              switch (index) {
                case 0:
                  _titulo(index);
                  visible = true;
                  break;
                case 1:
                  _titulo(index, text: "Proximamente");
                  visible = false;
                  break;
                case 2:
                  _titulo(index, text: "Descargas");
                  visible = false;
                  break;
              }
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
