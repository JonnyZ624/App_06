import 'package:flutter/material.dart';
import 'package:navegacion/navigators/drawer.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MiDrawer(),
      body: Text("Pantalla 3"),
    );
  }
}