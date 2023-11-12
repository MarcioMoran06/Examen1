
import 'package:flutter/material.dart';

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
            url: 'https://cdn-icons-png.flaticon.com/128/665/665156.png',
          ),
          SizedBox(height: 16.0),
          TareaCard(
            nombre: 'Kevin Cruz',
            descripcion: 'Realizar examen del primer parcial.',
            fecha: '31 de noviembre, 2023',
            url: 'https://cdn-icons-png.flaticon.com/128/1081/1081015.png',
          ),
          SizedBox(height: 16.0),
          TareaCard(
            nombre: 'Jampiere Molina',
            descripcion: 'Investigar sobre inteligencia artificial',
            fecha: '5 de noviembre, 2023',
            url: 'https://cdn-icons-png.flaticon.com/128/2322/2322993.png',
          ),
           SizedBox(height: 16.0),
          TareaCard(
            nombre: 'Tania Quezada',
            descripcion: 'Realizar Libro contable sobre la unidad 1 de la clase.',
            fecha: '13 de noviembre del 2023',
            url: 'https://cdn-icons-png.flaticon.com/128/182/182321.png',
          ),
          
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