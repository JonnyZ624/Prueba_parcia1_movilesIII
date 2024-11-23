import 'package:flutter/material.dart';
import 'package:prueba_parcial1/navigators/drawer.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla 3"),
      ),
      drawer: MiDrawer(),
      body: Cuerpo(),
    );
  }
}

class Cuerpo extends StatefulWidget {
  @override
  _CuerpoState createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {
  double altura = 0.0;
  double presion = 0.0;

  double densidad = 1025.0; 
  double gravedad = 9.8;    

  void calcularPresion() {
    setState(() {
      presion = densidad * gravedad * altura;  
    });
  }

   @override
Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        Center(
          child: Column(
            children: [
              Text('Ingrese la Altura:'),
              TextField(
                onChanged: (value) {
                  setState(() {
                    altura = double.parse(value);
                  });
                },
              ),
              ElevatedButton(onPressed: calcularPresion, child: Text('Calcular')),
              Text('La presión es: $presion'),
            ],
          ),
        ),
      ],
    ),
  );
}
}

