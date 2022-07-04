import 'dart:ui';
import 'package:appeventos01/Screens/asistentes/asistentes_screen.dart';
import 'package:appeventos01/Screens/chat/chat_screen.dart';
import 'package:appeventos01/Screens/encuestas/encuestas_screen.dart';
import 'package:appeventos01/Screens/expositores/expositores_screen.dart';
import 'package:appeventos01/Screens/galeria/galeria_screen.dart';
import 'package:appeventos01/Screens/matching/matching_screen.dart';
import 'package:appeventos01/Screens/mensajeria/mensajes_screen.dart';
import 'package:appeventos01/Screens/notificaciones/notificaciones_screen.dart';
import 'package:appeventos01/Screens/patrocinadores/patrocinadores_details_screen.dart';
import 'package:appeventos01/Screens/ponentes/ponentes_screen.dart';
import 'package:appeventos01/Screens/posters/posters_screen.dart';
import 'package:appeventos01/Screens/preguntas_ponente/preguntas_ponente.dart';
import 'package:appeventos01/Screens/twitter_wall/twitter_wall_screen.dart';
import 'package:appeventos01/Screens/videos/videos_screen.dart';
import 'package:appeventos01/Screens/votaciones/votaciones_screen.dart';
import 'package:flutter/material.dart';

import '../Screens/agenda/agenda_screen.dart';

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottonTabAgenda()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(255, 64, 129, 1),
                icon: Icons.calendar_today_outlined,
                text: 'Agenda'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PonentesScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(255, 64, 129, 1),
                icon: Icons.groups_outlined,
                text: 'Ponentes'),
          ),
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PatrocinadoresDetailsScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(234, 53, 148, 1),
                icon: Icons.handshake_outlined,
                text: 'Patrocinadores'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PreguntasAlPonenteScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(234, 53, 148, 1),
                icon: Icons.contact_support_outlined,
                text: 'Preguntas al Ponente'),
          ),
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ExpositoresScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(215, 43, 163, 1),
                icon: Icons.place_outlined,
                text: 'Expositores'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TwitterWallScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(215, 43, 163, 1),
                icon: Icons.tag,
                text: 'Twitter Wall'),
          ),
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MatchingScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(195, 32, 181, 1),
                icon: Icons.search_outlined,
                text: 'Matching'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AsistentesScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(195, 32, 181, 1),
                icon: Icons.support_agent_outlined,
                text: 'Asistentes'),
          ),
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MensajesScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(163, 14, 210, 1),
                icon: Icons.email_outlined,
                text: 'Mensajes Privados'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(163, 14, 210, 1),
                icon: Icons.message_outlined,
                text: 'Chat'),
          ),
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificacionesScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(142, 11, 212, 1),
                icon: Icons.notifications,
                text: 'Notificaciones'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EncuestasScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(142, 11, 212, 1),
                icon: Icons.fact_check_outlined,
                text: 'Encuestas'),
          ),
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PostersScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(116, 11, 192, 1),
                icon: Icons.poll_sharp,
                text: 'Poster / Abstracts'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GaleriaScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(116, 11, 192, 1),
                icon: Icons.collections_outlined,
                text: 'Galería'),
          ),
        ]),
        TableRow(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideosScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(97, 11, 169, 1),
                icon: Icons.video_library_outlined,
                text: 'Videos'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const VotacionesScreen()),
              );
            },
            child: const _SigleCard(
                color: Color.fromRGBO(97, 11, 169, 1),
                icon: Icons.pending_actions_outlined,
                text: 'Votaciones'),
          ),
        ]),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Container(
            height: 0,
            decoration: BoxDecoration(
                color: Color.fromARGB(177, 0, 0, 0),
                borderRadius: BorderRadius.circular(20)),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
