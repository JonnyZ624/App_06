import 'package:flutter/material.dart';
import 'package:navegacion/navigators/drawer.dart';
import 'package:navegacion/screens/pantalla2.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicacion",
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatefulWidget {
  const Cuerpo({super.key});

  @override
  State<Cuerpo> createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {
  int indiceSeleccionado = 0;
  final List<Widget> paginas = [
    Center(child: Text("Pantalla 1")),
    Center(child: Text("Pantalla 2")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla 1"),
      ),

      drawer: MiDrawer(),
      body: paginas[indiceSeleccionado],

      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: indiceSeleccionado,
        onTap: (value)=>{
          setState(() {
            indiceSeleccionado = value;
          })
        },
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Pantalla 1"),
        BottomNavigationBarItem(icon: Icon(Icons.landscape_outlined),label: "Pantalla 2")
      ],),
    );
  }
}


Widget boton1(context){
  return TextButton(onPressed: ()=>alerta1(context), child: Text("boton1"));
}

void alerta1(context){
  showDialog(context: context, builder: (BuildContext context){
     return AlertDialog(
      title: Text("Titulo de la alerta"),
      actions: [
        FilledButton(onPressed: ()=>Navigator.pop(context), child: Text("Cancelar"))
      ],
     );
  });
}

Widget pantalla2_btn(context){
  return ElevatedButton(onPressed: ()=>navegacion1(context), child: Text("Ir a pantalla 2"));
}

void navegacion1(context){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pantalla2()));
}

