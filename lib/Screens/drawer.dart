import 'package:appeventos01/Screens/agenda/agenda_screen.dart';
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
import 'package:appeventos01/Screens/ponentes/ponentes_screen.dart';
import 'package:appeventos01/Screens/posters/posters_screen.dart';
import 'package:appeventos01/Screens/preguntas_ponente/preguntas_ponente.dart';
import 'package:appeventos01/Screens/twitter_wall/twitter_wall_screen.dart';
import 'package:appeventos01/Screens/videos/videos_screen.dart';
import 'package:appeventos01/Screens/votaciones/votaciones_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/tags.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Column(
              children: [
                // Container(
                //   color: Colors.amber,
                //   height: 118,
                //   padding: const EdgeInsets.only(
                //     top: 15,
                //     left: 100,
                //     right: 100,
                //   ),
                //   child: const CircleAvatar(
                //     radius: 110,
                //     backgroundImage: NetworkImage(
                //       'https://www.geekmi.news/__export/1619631525888/sites/debate/img/2021/04/28/luffy1.jpg_1339198940.jpg',
                //     ),
                //   ),
                // ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 100,
                    right: 100,
                  ),
                  height: 68,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PerfilScreen()),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/17/17004.png',
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PerfilScreen()),
                    );
                  },
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Container(
                      margin: EdgeInsets.only(top: 0),
                      //color: Colors.black12,
                      child: Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: Column(
                          children: const [
                            Text(
                              'Nombre',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Cargo comleto',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 19,
                  //color: Colors.amber,
                  child: Text(
                    'Virtual Forum CDK',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today_outlined),
            title: const Text('Agenda'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottonTabAgenda()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.groups_outlined),
            title: const Text('Ponentes'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PonentesScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.handshake_outlined),
            title: const Text('Patrocinadores'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PatrocinadoresScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_support_outlined),
            title: const Text('Preguntas al ponente'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PreguntasAlPonenteScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.place_outlined),
            title: const Text('Expositores'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExpositoresScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.tag),
            title: const Text('Twitter Wall'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TwitterWallScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.search_outlined),
            title: const Text('Matching'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MatchingScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.support_agent_outlined),
            title: const Text('Asistentes'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AsistentesScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: const Text('Mensajería privada'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MensajesScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.message_outlined),
            title: const Text('Chat'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: const Text('Notificaciones'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificacionesScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.fact_check_outlined),
            title: const Text('Encuestas'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EncuestasScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.poll_sharp),
            title: const Text('Posters / Abstracts'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PostersScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.collections_outlined),
            title: const Text('Galería'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GaleriaScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.video_library_outlined),
            title: const Text('Videos'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideosScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.pending_actions_outlined),
            title: const Text('Votaciones'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const VotacionesScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
