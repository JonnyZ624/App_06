import 'package:flutter/material.dart';
import 'package:navegacion/main.dart';
import 'package:navegacion/screens/pantalla2.dart';
import 'package:navegacion/screens/pantalla3.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Pantalla 1"),
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>(MyApp()))),
          ),
          ListTile(
            tileColor: Colors.black26,
            title: Text("Pantalla 2"),
             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Pantalla2())),
          ),
          ListTile(
            title: Text("Pantalla 3"),
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Pantalla3())),
          ),
        ],
      ),
    );
  }
}