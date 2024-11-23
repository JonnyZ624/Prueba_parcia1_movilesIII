import 'package:flutter/material.dart';
import 'package:prueba_parcial1/navigators/drawer.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla 2"),
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
  String mensaje = '';
  double v = 0.0, vf = 0.0;

void calcularTiempo() {
  const a = 10.0;
  double t = (vf - v) / a;
  setState(() {
    if (t <= 5) {
      mensaje = 'El vehículo aprobó la prueba.';
    } else {
      mensaje = 'El vehículo NO aprobó la prueba.';
    }
  });
}


@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Column(
        children: [
          Text('Ingrese la Velocidad Inicial:'),
          TextField(
            onChanged: (value) => v = double.parse(value),
          ),
          Text('Ingrese la Velocidad Final:'),
          TextField(
            onChanged: (value) => vf = double.parse(value),
          ),
          ElevatedButton(
            onPressed: calcularTiempo,
            child: Text('Calcular'),
          ),
          Text(mensaje),
        ],
      ),
    ),
  );
}



}
