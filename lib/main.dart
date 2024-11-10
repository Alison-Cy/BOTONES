import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de Botones'),
        ),
        body: Center( // Aquí centramos el contenido
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  // Centrado verticalmente
              crossAxisAlignment: CrossAxisAlignment.center, // Centrado horizontalmente
              children: [
                // Botón ElevatedButton (Botón de acción principal)
                ElevatedButton(
                  onPressed: () {
                    print("Elevated Button Pressed");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Fondo azul
                    foregroundColor: Colors.white, // Color del texto
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text('Elevated Button'),
                ),
                SizedBox(height: 5),
                Text('Elevated Button', style: TextStyle(fontSize: 16)), // Nombre del botón
                SizedBox(height: 20),

                // Botón TextButton (Botón de enlace)
                TextButton(
                  onPressed: () {
                    print("Text Button Pressed");
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green, // Color del texto
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text('Text Button'),
                ),
                SizedBox(height: 5),
                Text('Text Button', style: TextStyle(fontSize: 16)), // Nombre del botón
                SizedBox(height: 20),

                // Botón OutlinedButton (Botón con borde)
                OutlinedButton(
                  onPressed: () {
                    print("Outlined Button Pressed");
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.purple, // Color del texto
                    side: BorderSide(color: Colors.purple), // Color del borde
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text('Outlined Button'),
                ),
                SizedBox(height: 5),
                Text('Outlined Button', style: TextStyle(fontSize: 16)), // Nombre del botón
                SizedBox(height: 20),

                // Botón IconButton (Botón con icono)
                IconButton(
                  onPressed: () {
                    print("Icon Button Pressed");
                  },
                  icon: Icon(Icons.favorite, color: Colors.red),
                  iconSize: 40,
                ),
                SizedBox(height: 5),
                Text('Icon Button', style: TextStyle(fontSize: 16)), // Nombre del botón
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Botón en el pie de página con ícono de inicio
                IconButton(
                  onPressed: () {
                    print("Pie de página: Ícono Inicio Pressed");
                  },
                  icon: Icon(Icons.home, color: Colors.blue),
                  iconSize: 30,
                ),
                SizedBox(height: 5),
                Text('Inicio', style: TextStyle(fontSize: 16)), // Nombre del botón

                // Botón en el pie de página con ícono de búsqueda
                IconButton(
                  onPressed: () {
                    print("Pie de página: Ícono Búsqueda Pressed");
                  },
                  icon: Icon(Icons.search, color: Colors.green),
                  iconSize: 30,
                ),
                SizedBox(height: 5),
                Text('Búsqueda', style: TextStyle(fontSize: 16)), // Nombre del botón

                // Botón en el pie de página con ícono de configuración
                IconButton(
                  onPressed: () {
                    print("Pie de página: Ícono Configuración Pressed");
                  },
                  icon: Icon(Icons.settings, color: Colors.purple),
                  iconSize: 30,
                ),
                SizedBox(height: 5),
                Text('Configuración', style: TextStyle(fontSize: 16)), // Nombre del botón
              ],
            ),
          ),
        ),
      ),
    );
  }
}
