
import 'package:flutter/material.dart';
import 'package:examenparcial1/listaTareas.dart';
import 'package:examenparcial1/noticias.dart';
import 'package:examenparcial1/podcast.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP CEUTEC',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/noticias': (context) => NoticiasPage(),
        '/cambioMoneda': (context) => CambioMonedaPage(),
        '/listaTareas': (context) => ListaTareasPage(),
        '/podcast': (context) => PodcastApp(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP CEUTEC'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Marcio Moran'),
              accountEmail: Text('marciomoran10@unitec.edu'),
            ),
            ListTile(
              title: Text('Noticias'),
              leading: Icon(Icons.newspaper),
              onTap: () {
                Navigator.pushNamed(context, '/noticias');
              },
            ),
            ListTile(
              title: Text('Cambio de monedas'),
              leading: Icon(Icons.currency_exchange),
              onTap: () {
                Navigator.pushNamed(context, '/cambioMoneda');
              },
            ),
            ListTile(
              title: Text('Lista de tareas'),
              leading: Icon(Icons.list),
              onTap: () {
                Navigator.pushNamed(context, '/listaTareas');
              },
            ),
            ListTile(
              title: Text('Podcast'),
              leading: Icon(Icons.headset),
              onTap: () {
                Navigator.pushNamed(context, '/podcast');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CambioMonedaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de monedas'),
      ),
      body: Center(
        child: Text('Esta es la p gina de cambio de monedas'),
      ),
    );
  }
}
