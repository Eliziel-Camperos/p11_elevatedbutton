import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación de Botones'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Eliziel 22308051281159',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              // Fila 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  adaptiveButton('RaisedButton', Colors.red, Icons.star),
                  buttonWithLabel('ElevatedButton', Colors.blue),
                ],
              ),
              SizedBox(height: 10),

              // Fila 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  adaptiveButton('RaisedButton', Colors.green, Icons.favorite),
                  buttonWithLabel('ElevatedButton', Colors.orange),
                ],
              ),
              SizedBox(height: 10),

              // Fila 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  adaptiveButton('RaisedButton', Colors.purple, Icons.thumb_up),
                  buttonWithLabel('ElevatedButton', Colors.teal),
                ],
              ),
              SizedBox(height: 10),

              // Fila 4
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  adaptiveButton('RaisedButton', Colors.pink, Icons.lightbulb),
                  buttonWithLabel('ElevatedButton', Colors.brown),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Widget para crear un botón sin icono
  Widget buttonWithLabel(String label, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: TextStyle(fontSize: 14)),
        SizedBox(height: 2),
        ElevatedButton(
          onPressed: () {},
          child: Text('Button'),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          ),
        ),
      ],
    );
  }

  // Widget para crear un botón con icono que se ajuste justo al tamaño del contenido
  Widget adaptiveButton(String label, Color color, IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: TextStyle(fontSize: 14)),
        SizedBox(height: 2),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(icon, color: Colors.white),
          label: Text('Button'),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            minimumSize:
                Size(0, 0), // Permite que el tamaño se ajuste al contenido
          ),
        ),
      ],
    );
  }
}
