import 'package:flutter/material.dart';

class Download extends StatelessWidget {
  const Download({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(color: Colors.black),
      child: Center(
        child: Icon(
          Icons.download_for_offline_outlined,
          size: 150.0,
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    );
  }
}
