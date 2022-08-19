import 'package:flutter/material.dart';
import '../../../kernel/config/drawer_navigation.dart';
import 'components/ponentes_details_screen.dart';

class PonentesScreen extends StatelessWidget {
  const PonentesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(15, (i) => 'items $i');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ponentes'),
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
                  leading: const CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/17/17004.png'),
                    backgroundColor: Colors.transparent,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  title: Text('Nombre del ponente'),
                  subtitle: new Text('Cargo del ponente'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PonentesDetailsScreen()),
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
