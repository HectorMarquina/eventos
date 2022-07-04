import 'package:appeventos01/Screens/asistentes/asistentes_screen.dart';
import 'package:appeventos01/Screens/chat/chat_screen.dart';
import 'package:appeventos01/Screens/encuestas/encuestas_screen.dart';
import 'package:appeventos01/Screens/expositores/expositores_screen.dart';
import 'package:appeventos01/Screens/galeria/galeria_screen.dart';
import 'package:appeventos01/Screens/home_screen.dart';
import 'package:appeventos01/Screens/matching/matching_screen.dart';
import 'package:appeventos01/Screens/mensajeria/mensajes_screen.dart';
import 'package:appeventos01/Screens/notificaciones/notificaciones_screen.dart';
import 'package:appeventos01/Screens/patrocinadores/patrocinadores_screen.dart';
import 'package:appeventos01/Screens/perfil/perfil_screen.dart';
import 'package:appeventos01/Screens/ponentes/ponentes_details_screen.dart';
import 'package:appeventos01/Screens/posters/posters_screen.dart';
import 'package:appeventos01/Screens/preguntas_ponente/preguntas_ponente.dart';
import 'package:appeventos01/Screens/twitter_wall/twitter_wall_screen.dart';
import 'package:appeventos01/Screens/videos/videos_screen.dart';
import 'package:flutter/material.dart';

import '../drawer.dart';
import '../votaciones/votaciones_screen.dart';
import 'expositor_details_screen.dart';

class ExpositoresScreen extends StatelessWidget {
  const ExpositoresScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(15, (i) => 'items $i');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expositores'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          )
        ],
      ),
      drawer: DrawerApp(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    width: 50,
                    child: FadeInImage(
                      placeholder: const AssetImage('assets/no-image.jpg'),
                      image: NetworkImage(
                          'https://png.pngtree.com/template/20191014/ourlarge/pngtree-real-estate-business-logo-template-building-property-development-and-construction-logo-image_317796.jpg'),
                      height: 150,
                      width: 110,
                      //fit: BoxFit.cover,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  title: Text('Nombre del expositor'),
                  //subtitle: new Text(''),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExpositorDetailsScreen()),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
