import 'package:flutter/material.dart';
import 'package:prueba_parcial1/navigators/drawer.dart';
import 'package:prueba_parcial1/screens/pantalla2.dart';
import 'package:prueba_parcial1/screens/pantalla3.dart';

void main(){
  runApp(Prueba());
}

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Cuerpo(),
    );
  }
}
class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PRUEBA PARCIAL"),
        
      ),
      drawer: MiDrawer(),
      body: Center(
        child: Column(
          children: [
            Text("Jonathan Tapia"),
            Text("JonnyZ624"),
            boton1(context),
            boton2(context)
          ],
        ),
      ),
    );
  }
}

Widget boton1(context) {
  return TextButton(onPressed: () {Navigator.push( context,MaterialPageRoute(builder: (context) => Pantalla2()),);},child: Text("Ir a pantalla 2"),
  );
}


Widget boton2( context) {
  return TextButton(onPressed: () {Navigator.push( context,MaterialPageRoute(builder: (context) => Pantalla3()),);},child: Text("Ir a pantalla 3"),
  );
}




