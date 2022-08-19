import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'agregar_nota_ponentes_screen.dart';

class PonentesDetailsScreen extends StatelessWidget {
  const PonentesDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(1, (i) => 'items $i');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nombre Ponente'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AgregarNotaPonentesScreen()),
                      );
                    },
                    icon: Icon(Icons.edit_note_outlined)),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.star_border_outlined),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 180,
              child: Container(
                color: Colors.black12,
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 100,
                    right: 100,
                  ),
                  child: const CircleAvatar(
                    radius: 110,
                    backgroundImage: NetworkImage(
                      'http://blog.aulaformativa.com/wp-content/uploads/2016/08/consideraciones-mejorar-primera-experiencia-de-usuario-aplicaciones-web-perfil-usuario.jpg',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Container(
                margin: EdgeInsets.only(top: 0),
                color: Colors.black12,
                child: Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Column(
                    children: const [
                      Text(
                        'Nombre',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Cargo comleto',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 55,
              margin: EdgeInsets.only(top: 0),
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.language_outlined),
                      iconSize: 30,
                      tooltip: 'Ir al enlace',
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.email_outlined),
                      iconSize: 30,
                      tooltip: 'Ir al enlace',
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.facebook_outlined),
                      iconSize: 30,
                      tooltip: 'Ir al enlace',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Column(
                children: [
                  const Text(
                    'Valorar',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  RatingBar.builder(
                    itemCount: 5,
                    initialRating: 0,
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                    itemBuilder: (_, __) {
                      return const Icon(Icons.star);
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    ' Toda la descripción del ponente va insertada aquí. Toda la descripción del ponente va insertada aquí. Toda la descripción del ponente va insertada aquí. Toda la descripción del ponente va insertada aquí. Toda la descripción del ponente va insertada aquí. Toda la descripción del ponente va insertada aquí. Toda la descripción del ponente va insertada aquí. Toda la descripción del ponente va insertada aquí. Toda la descripción del ponente va insertada aquí. Toda la descripción del ponente va insertada aquí. ',
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Agenda',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            Container(
              //color: Colors.amber,
              height: 100,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      child: Image(
                        image: NetworkImage(
                            'https://images.vexels.com/media/users/3/135782/isolated/preview/44c8ca04e5b3d8400dd6834ff096dc32-icono-de-calendario-de-fecha.png'),
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    title: Text('Nombre de la reunión'),
                    subtitle: new Text('Hora de la reunión'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const PonentesDetailsScreen()),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
