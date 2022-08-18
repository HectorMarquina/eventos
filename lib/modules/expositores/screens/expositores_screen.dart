import 'package:appeventos01/modules/expositores/screens/components/expositor_details_screen.dart';
import 'package:flutter/material.dart';

import '../../../kernel/config/drawer_navigation.dart';

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
