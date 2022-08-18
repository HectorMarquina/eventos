import 'package:flutter/material.dart';
import '../../../kernel/config/drawer_navigation.dart';
import 'components/patrocinadores_details_screen.dart';

class PatrocinadoresScreen extends StatelessWidget {
  const PatrocinadoresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(15, (i) => 'items $i');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Patrocinadores'),
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
                        'Rango',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
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
                      title: Text('${items[index]}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PatrocinadoresDetailsScreen()),
                        );
                      },
                    );
                  }),
            ),
          ],
        ));
  }
}
