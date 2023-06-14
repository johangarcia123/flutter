import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
        backgroundColor: Colors.blue, // Color de fondo de la AppBar
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person), // Icono a la izquierda del ListTile
            title: TextFormField(
              decoration: InputDecoration(
                labelText: index == 0 ? 'Nombre' : index == 1 ? 'Apellido' : index == 2 ? 'Correo electrónico' : 'Contraseña', // Etiqueta del campo de texto
                border: OutlineInputBorder(), // Estilo de borde del campo de texto
                filled: true, // Activar fondo de color en el campo de texto
                fillColor: Colors.grey[200], // Color de fondo del campo de texto
              ),
            ),
          );
        }, // Separador entre los elementos de la lista
      ),
    );
  }
}
