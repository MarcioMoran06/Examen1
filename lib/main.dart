
import 'package:flutter/material.dart';
import 'package:examenparcial1/listaTareas.dart';
import 'package:examenparcial1/noticias.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP CEUTEC',
      initialRoute: '/',
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

class NoticiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          NoticiaCard(
            titulo: 'Evento de graduacion',
            fecha: '29 de noviembre, 2023',
            contenido:
                'Te invitamos a nuestro evento de graduacion del ano 2023!',
          ),
          SizedBox(height: 16.0),
          NoticiaCard(
            titulo: 'Conferencia sobre emprendimiento',
            fecha: '19 de noviembre, 2023',
            contenido:
                'No te pierdas la conferencia sobre la importancia de como emprender de manera correcta.',
          ),
          NoticiaCard(
            titulo: 'Asuntos estudiantiles',
            fecha: '30 de noviembre, 2023',
            contenido:
                'Se le informa a la comunidad de los estudiantes las diferentes actividades que habran en el mes de diciembre del 2023.',
          ),
          SizedBox(height: 16.0),
          NoticiaCard(
            titulo: 'Feria de Tecnologia',
            fecha: '22 de noviembre, 2023',
            contenido:
                'Muestra tus habilidades y conocimientos sobre el maravilloso mundo de la tecnologia.',
          ),
        ],
      ),
    );
  }
}

class NoticiaCard extends StatelessWidget {
  final String titulo;
  final String fecha;
  final String contenido;

  const NoticiaCard({
    required this.titulo,
    required this.fecha,
    required this.contenido,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              fecha,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              contenido,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class Noticias extends StatelessWidget {
  final List<Noticia> noticias;

  const Noticias({Key? key, required this.noticias}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.network(noticias[index].imagenUrl),
                Text(noticias[index].titulo),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(noticias[index].descripcion),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Noticia {
  final String titulo;
  final String descripcion;
  final String imagenUrl;

  Noticia({
    required this.titulo,
    required this.descripcion,
    required this.imagenUrl,
  });
}

class ListaTareasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TareaCard(
            nombre: 'Marcio Moran',
            descripcion: 'Realizar la presentaci n del proyecto',
            fecha: '31 de octubre, 2023',
            url: 'https://example.com',
          ),
          SizedBox(height: 16.0),
          TareaCard(
            nombre: 'Carlos Pinto',
            descripcion: 'Investigar sobre inteligencia artificial',
            fecha: '5 de noviembre, 2023',
            url: 'https://example.com',
          ),
          // Agrega m s ejemplos seg n sea necesario
        ],
      ),
    );
  }
}

class TareaCard extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String fecha;
  final String url;

  const TareaCard({
    required this.nombre,
    required this.descripcion,
    required this.fecha,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nombre,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.date_range, color: Colors.grey),
                    SizedBox(width: 4.0),
                    Text(
                      fecha,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Icon(Icons.link, color: Colors.blue),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              descripcion,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class PodcastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcast'),
      ),
      body: Center(
        child: Text('Esta es la pagina del podcast'),
      ),
    );
  }
}