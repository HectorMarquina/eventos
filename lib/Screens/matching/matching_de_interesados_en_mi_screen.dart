import 'package:flutter/material.dart';

import '../../widgets/dopr_menu_usuarios_interesados.dart';
import '../../widgets/drawer.dart';
import '../../widgets/drop_menu_asistentes.dart';
import '../asistentes/asistentes_details_screen.dart';

class InteresadosEnMiScreen extends StatelessWidget {
  const InteresadosEnMiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final items = List<String>.generate(15, (i) => 'items $i');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asistentes'),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.swap_vert_outlined)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
              ],
            ),
          )
        ],
      ),
      drawer: DrawerApp(),
      body: Column(
        children: [
          Container(
            color: Colors.black12,
            width: double.infinity,
            child: DropMenuUsuariosScreen(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://www.geekmi.news/__export/1619631525888/sites/debate/img/2021/04/28/luffy1.jpg_1339198940.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  title: Text('Nombre del asistente'),
                  subtitle: new Text('Cargo del asistente'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AsistentesDetailsScreen()),
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
