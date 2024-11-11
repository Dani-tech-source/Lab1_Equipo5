import 'package:flutter/material.dart';

class Noticias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Lista de noticias con datos de ejemplo (título, descripción e imagen)
    final List<Map<String, dynamic>> noticias = [
      {
        'titulo': 'Descubren misteriosa isla flotante',
        'descripcion':
            'Científicos afirman haber encontrado una isla que se mueve a través del océano Pacífico sin explicación aparente.',
        'imagen': 'src/imagenes/anuncio1.jpg',
      },
      {
        'titulo': 'Robot chef lanza nuevo libro de cocina',
        'descripcion':
            'El famoso robot chef "Culinario 3000" lanza su primer libro con recetas futuristas que prometen revolucionar la gastronomía.',
        'imagen': 'src/imagenes/anuncio2.jpg',
      },
      {
        'titulo': 'Nueva ley prohíbe los lunes',
        'descripcion':
            'El gobierno anuncia una nueva ley que prohíbe oficialmente los lunes. Los ciudadanos celebran la eliminación del día más odiado de la semana.',
        'imagen': 'src/imagenes/anuncio3.jpg',
      },
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: noticias.length,
        itemBuilder: (context, index) {
          return _buildNoticiaCard(noticias[index]);
        },
      ),
    );
  }

Widget _buildNoticiaCard(Map<String, dynamic> noticia) {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0), // Margen vertical aumentado
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Contenedor para la imagen
        Expanded(
          flex: 1,
          child: Container(
            height: 100, // Altura deseada de la imagen
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(noticia['imagen']),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // Espacio entre la imagen y la información
        SizedBox(width: 8.0),
        // Contenedor para la información
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Título de la noticia
                Text(
                  noticia['titulo'],
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                // Descripción de la noticia
                Text(
                  noticia['descripcion'],
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
}