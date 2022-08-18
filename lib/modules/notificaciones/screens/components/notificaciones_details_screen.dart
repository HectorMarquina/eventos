import 'package:flutter/material.dart';

import '../../../expositores/screens/components/agregar_nota_expositores_screen.dart';

class NotificacionDetailsScreen extends StatelessWidget {
  const NotificacionDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nombre patrocinador'),
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
                                const AgregarNotaExpositoresScreen()),
                      );
                    },
                    icon: const Icon(Icons.edit_note_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.star_border_outlined)),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              height: 270,
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage(
                    'https://www.luftechnik.com/wp-content/uploads/2021/02/placeholder.png'),

                width: 130,
                height: 190,
                //LOCO NO OLVIDES ESTO PORQUE ES MUY NECESARIO
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
              child: Container(
                margin: const EdgeInsets.only(top: 0),
                color: Colors.black12,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 7),
                      child: Text(
                        'Nombre',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 55,
              margin: const EdgeInsets.only(top: 0),
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
                      icon: const Icon(Icons.language_outlined),
                      iconSize: 30,
                      tooltip: 'Ir al enlace',
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.language_outlined),
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
                    IconButton(
                      icon: const Icon(Icons.language_outlined),
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
                horizontal: 30,
                vertical: 10,
              ),
              child: Text(
                ' Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. ',
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Intership and / or positions offered',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              ' Prácticas tercer curso, Prácticas MBA ',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Job vacancies',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              ' No ',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              ' - ',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Contact for appointments',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              ' nombre ',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              ' correo electrónico ',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              ' Número de teléfono ',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}

class _PatrocinadoresPlatinoPic extends StatelessWidget {
  const _PatrocinadoresPlatinoPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 190,
      //color: Colors.blueAccent,
      // margin: const EdgeInsets.symmetric(
      //   horizontal: 10,
      // ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificacionDetailsScreen()),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                width: 100,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Rango Patrocinador',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
