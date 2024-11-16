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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
           
                ElevatedButton(
                  onPressed: () {
                    print("Guardar Pressed");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text('Guardar'),
                ),
                SizedBox(height: 5),
                Text('Guardar', style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),

        
                TextButton(
                  onPressed: () {
                    print("Cancelar Pressed");
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text('Cancelar'),
                ),
                SizedBox(height: 5),
                Text('Cancelar', style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),

               
                OutlinedButton(
                  onPressed: () {
                    print("Enviar Pressed");
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.purple,
                    side: BorderSide(color: Colors.purple),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text('Enviar'),
                ),
                SizedBox(height: 5),
                Text('Enviar', style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),

               
                IconButton(
                  onPressed: () {
                    print("Like Pressed");
                  },
                  icon: Icon(Icons.thumb_up, color: Colors.red),
                  iconSize: 40,
                ),
                SizedBox(height: 5),
                Text('Like', style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              IconButton(
                onPressed: () {
                  print("Inicio Pressed");
                },
                icon: Icon(Icons.home, color: Colors.blue),
                iconSize: 30,
              ),

              
              IconButton(
                onPressed: () {
                  print("Búsqueda Pressed");
                },
                icon: Icon(Icons.search, color: Colors.green),
                iconSize: 30,
              ),

              
              SizedBox(width: 40),

              
              IconButton(
                onPressed: () {
                  print("Notificaciones Pressed");
                },
                icon: Icon(Icons.notifications, color: Colors.red),
                iconSize: 30,
              ),

              
              IconButton(
                onPressed: () {
                  print("Configuración Pressed");
                },
                icon: Icon(Icons.settings, color: Colors.purple),
                iconSize: 30,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Botón Flotante Pressed");
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
