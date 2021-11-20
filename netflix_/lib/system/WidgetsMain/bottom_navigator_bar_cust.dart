// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BottomNavigatorBarCust extends StatefulWidget {
  BottomNavigatorBarCust({
    Key? key,
    required int selectedIndex,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  late int _selectedIndex;

  @override
  State<BottomNavigatorBarCust> createState() => _BottomNavigatorBarCustState();
}

class _BottomNavigatorBarCustState extends State<BottomNavigatorBarCust> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: widget._selectedIndex,
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
          widget._selectedIndex = index;
        });
      },
    );
  }
}
