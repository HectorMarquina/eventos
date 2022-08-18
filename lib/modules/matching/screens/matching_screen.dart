import 'package:appeventos01/modules/matching/screens/components/matching_de_interesados_en_mi_screen.dart';
import 'package:appeventos01/modules/matching/screens/components/matching_de_mi_interes_screen.dart';
import 'package:flutter/material.dart';

import '../../../kernel/config/drawer_navigation.dart';

class MatchingScreen extends StatelessWidget {
  const MatchingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matching'),
      ),
      drawer: DrawerApp(),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            //color: Colors.amberAccent,
            width: size.width,
            height: 150,
            child: Icon(
              Icons.search,
              size: 100,
              color: Colors.black12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.search_outlined),
                  Text(
                    'Usuarios que me interesan',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeMiInteresScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              child: Row(
                children: [
                  Icon(Icons.person_search_outlined),
                  Text('Usuarios interesados en mi perfil'),
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InteresadosEnMiScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w100)),
            ),
          ),
        ],
      )),
    );
  }
}
