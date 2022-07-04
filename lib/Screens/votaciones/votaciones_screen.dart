import 'package:appeventos01/Screens/matching/matching_de_interesados_en_mi_screen.dart';
import 'package:appeventos01/Screens/matching/matching_de_mi_interes_screen.dart';
import 'package:appeventos01/Screens/votaciones/votaciones_Details_screen.dart';
import 'package:flutter/material.dart';

import '../drawer.dart';

class VotacionesScreen extends StatelessWidget {
  const VotacionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemsVotaciones = List<String>.generate(1, (i) => 'items $i');
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Votaciones'),
      ),
      drawer: DrawerApp(),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Container(
              height: 70,
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.refresh_outlined,
                      size: 50,
                    ),
                    Text(
                      'Refrescar',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeMiInteresScreen()),
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
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20, top: 10),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: itemsVotaciones.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black12, width: 1),
                        ),
                        tileColor: Colors.white,
                        contentPadding: EdgeInsets.only(
                          top: 1,
                          bottom: 1,
                        ),
                        leading: Container(
                          padding: EdgeInsets.zero,
                          // width: 20,
                          //color: Colors.amber,
                          height: size.height,

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.greenAccent[400],
                              radius: 5,
                            ),
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: Transform.translate(
                          offset: Offset(-30, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                //color: Colors.amber,
                                width: 150,
                                child: Text(
                                  'Nombre de la votación',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Transform.translate(
                                offset: Offset(30, 0),
                                child: Container(
                                  color: Colors.grey[600],
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 8,
                                    ),
                                    child: Text(
                                      'Cerrada',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const VotacionesDetailsScreen()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
