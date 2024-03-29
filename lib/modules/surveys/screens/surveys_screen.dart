import 'package:flutter/material.dart';

import '../../../kernel/config/drawer_navigation.dart';
import 'components/encuesta_detials_screen.dart';

class EncuestasScreen extends StatelessWidget {
  const EncuestasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(5, (i) => 'items $i');
    final items2 = List<String>.generate(3, (i) => 'items $i');
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Encuestas'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
          )
        ],
      ),
      drawer: DrawerApp(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
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
                            trailing:
                                const Icon(Icons.arrow_forward_ios_outlined),
                            title: Transform.translate(
                              offset: Offset(-30, 0),
                              child: Text('Nombre de a encuesta'),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EncuestaDetailsScreen()),
                              );
                            },
                          ),
                        ],
                      );
                    },
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
