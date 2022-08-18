import 'package:flutter/material.dart';
import '../../../kernel/config/drawer_navigation.dart';
import 'components/posters_details_screen.dart';

class PostersScreen extends StatelessWidget {
  const PostersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(15, (i) => 'items $i');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pósters / Abstracts'),
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
                  leading: FadeInImage(
                    placeholder: const AssetImage('assets/no-image.jpg'),
                    image: NetworkImage(
                        'https://res.cloudinary.com/teepublic/image/private/s--tU0W56q_--/t_Resized%20Artwork/c_fit,g_north_west,h_954,w_954/co_c8e0ec,e_outline:35/co_c8e0ec,e_outline:inner_fill:35/co_ffffff,e_outline:35/co_ffffff,e_outline:inner_fill:35/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_90,w_630/v1543004634/production/designs/3563058_0.jpg'),
                    height: 150,
                    width: 110,
                    fit: BoxFit.cover,
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  title: Text('Nombre del Poster'),
                  //subtitle: new Text(''),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PostersDetailsScreen()),
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
