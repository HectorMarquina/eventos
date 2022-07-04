import 'dart:ui';
import 'package:appeventos01/Screens/agenda/agenda_screen.dart';
import 'package:appeventos01/Screens/galeria/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Screens/asistentes/asistentes_screen.dart';
import '../Screens/chat/chat_screen.dart';
import '../Screens/encuestas/encuestas_screen.dart';
import '../Screens/expositores/expositores_screen.dart';
import '../Screens/galeria/galeria_screen.dart';
import '../Screens/matching/matching_screen.dart';
import '../Screens/mensajeria/mensajes_screen.dart';
import '../Screens/notificaciones/notificaciones_screen.dart';
import '../Screens/patrocinadores/patrocinadores_screen.dart';
import '../Screens/ponentes/ponentes_screen.dart';
import '../Screens/posters/posters_screen.dart';
import '../Screens/preguntas_ponente/preguntas_ponente.dart';
import '../Screens/twitter_wall/twitter_wall_screen.dart';
import '../Screens/videos/clips.dart';
import '../Screens/videos/home_screen.dart';
import '../Screens/videos/play_page.dart';
import '../Screens/videos/videos_screen.dart';
import '../Screens/votaciones/votaciones_screen.dart';

void main() {
  runApp(const GridMenu());
}

class GridMenu extends StatelessWidget {
  const GridMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Widget> list = List<Widget>.from({
      "Agenda",
      "Ponentes",
      "Patrocinadores",
      "Preguntas al ponente",
      "Expositores",
      "Twitter Wall",
      "Matching",
      "Asistentes",
      "Mensajes Privados",
      "Chat",
      "Notificaciones",
      "Encuestas",
      "Posters / Abstracts",
      "Galería",
      "Videos",
      "Encuestas",
    }
        .map((tag) => Chip(
              label: Text(
                tag,
              ),
            ))
        .toList());
    const title = 'Grid List';

    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        gradient: RadialGradient(colors: [
          Colors.white,
          Colors.white,
        ], radius: 0.85, focal: Alignment.center),
      ),
      child: GridView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottonTabAgenda()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.calendar_today_outlined,
                  text: 'Agenda'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PonentesScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.groups_outlined,
                  text: 'Ponentes'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PatrocinadoresScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.handshake_outlined,
                  text: 'Patrocinadores'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PreguntasAlPonenteScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.contact_support_outlined,
                  text: 'Preguntas al Ponente'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExpositoresScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.place_outlined,
                  text: 'Expositores'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TwitterWallScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.tag,
                  text: 'Twitter Wall'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MatchingScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.search_outlined,
                  text: 'Matching'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AsistentesScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.support_agent_outlined,
                  text: 'Asistentes'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MensajesScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.email_outlined,
                  text: 'Mensajes Privados'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.message_outlined,
                  text: 'Chat'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificacionesScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.notifications,
                  text: 'Notificaciones'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EncuestasScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.fact_check_outlined,
                  text: 'Encuestas'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PostersScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.poll_sharp,
                  text: 'Poster / Abstracts'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.collections_outlined,
                  text: 'Galería'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          PlayPage(clips: VideoClip.remoteClips)),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.video_library_outlined,
                  text: 'Videos'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 0.2,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VotacionesScreen()),
                );
              },
              child: const _SigleCard(
                  color: Colors.transparent,
                  icon: Icons.pending_actions_outlined,
                  text: 'Votaciones'),
            ),
          ),
        ],
      ),
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
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(height: 1),
        Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
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
      margin: const EdgeInsets.all(1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(0)),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
