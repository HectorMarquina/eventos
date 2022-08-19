import 'package:flutter/material.dart';

import '../../../kernel/config/drawer_navigation.dart';

class NotificacionesScreen extends StatelessWidget {
  const NotificacionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(5, (i) => 'items $i');
    final items2 = List<String>.generate(3, (i) => 'items $i');
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preguntas al ponente'),
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
                  SizedBox(
                    height: 40,
                    child: Container(
                      margin: EdgeInsets.only(top: 0),
                      color: Colors.black12,
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Text(
                              'Leídos',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
                              child: Text('Nombre de la notificación'),
                            ),
                            subtitle: Transform.translate(
                              offset: Offset(-30, 0),
                              child: Text('Fecha completa'),
                            ),
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
