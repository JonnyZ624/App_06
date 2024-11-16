import 'package:flutter/material.dart';
import 'package:navegacion/navigators/drawer.dart';
import 'package:navegacion/screens/pantalla3.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla2"),
      ),
      drawer: MiDrawer(),
      body: Column(
        children: [
          const Text("PANTALLA 2"),
          FilledButton(onPressed: ()=>Navigator.pop(context), 
          child: const Text("BOTON")),

          ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Pantalla3()))
          , child: const Text("Ir a pantalla 3"))
        ],
      ),
      );
  }
}