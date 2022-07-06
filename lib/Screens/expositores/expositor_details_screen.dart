import 'package:appeventos01/Screens/expositores/agregar_nota_expositores_screen.dart';
import 'package:appeventos01/widgets/mapa.dart';
import 'package:flutter/material.dart';

import '../asistentes/asistentes_details_screen.dart';

class ExpositorDetailsScreen extends StatelessWidget {
  const ExpositorDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final items = List<String>.generate(3, (i) => 'items $i');
    final itemsVideos = List<String>.generate(1, (i) => 'items $i');
    final itemsDocumentos = List<String>.generate(2, (i) => 'items $i');
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
                horizontal: 10,
                vertical: 10,
              ),
              child: Text(
                ' Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. Toda la descripción del patrocinador va insertada aquí. ',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: const Text(
                  'Contactar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
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
                      tileColor: Colors.white,
                      leading: const CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://www.geekmi.news/__export/1619631525888/sites/debate/img/2021/04/28/luffy1.jpg_1339198940.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      title: Text('Nombre del Asistente'),
                      subtitle: new Text('Cargo del Asistente'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AsistentesDetailsScreen()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                );
              },
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: const Text(
                  'Videos',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: itemsVideos.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: FadeInImage(
                                  placeholder:
                                      const AssetImage('assets/no-image.jpg'),
                                  image: NetworkImage(
                                      'https://res.cloudinary.com/teepublic/image/private/s--tU0W56q_--/t_Resized%20Artwork/c_fit,g_north_west,h_954,w_954/co_c8e0ec,e_outline:35/co_c8e0ec,e_outline:inner_fill:35/co_ffffff,e_outline:35/co_ffffff,e_outline:inner_fill:35/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_90,w_630/v1543004634/production/designs/3563058_0.jpg'),
                                  height: 50,
                                  width: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('clip.title',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      Padding(
                                        child: Text("runtime",
                                            style: TextStyle(
                                                color: Colors.grey[500])),
                                        padding: EdgeInsets.only(top: 3),
                                      )
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                );
              },
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: const Text(
                  'Documentos',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: itemsDocumentos.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      tileColor: Colors.white,
                      leading: FadeInImage(
                        placeholder: const AssetImage('assets/no-image.jpg'),
                        image: NetworkImage(
                            'https://res.cloudinary.com/teepublic/image/private/s--tU0W56q_--/t_Resized%20Artwork/c_fit,g_north_west,h_954,w_954/co_c8e0ec,e_outline:35/co_c8e0ec,e_outline:inner_fill:35/co_ffffff,e_outline:35/co_ffffff,e_outline:inner_fill:35/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_90,w_630/v1543004634/production/designs/3563058_0.jpg'),
                        height: 100,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      title: Text('Nombre del Documento'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AsistentesDetailsScreen()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: const Text(
                  'Mapas',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mapa()),
                );
              },
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(4),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: FadeInImage(
                          placeholder: const AssetImage('assets/no-image.jpg'),
                          image: NetworkImage(
                              'https://docs.microsoft.com/es-es/azure/azure-maps/media/migrate-google-maps-web-app/google-maps-marker.png'),
                          height: 50,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Nombre de la ubicación',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: const Text(
                  'Intership and / or positions offered',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  ' Prácticas tercer curso, Prácticas MBA ',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: const Text(
                  'Job Vacancies',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ' No ',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ' - ',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: const Text(
                  'Contact for appointments',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ' nombre ',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ' Correo electrónico ',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ' Número de teléfono ',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
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
                    builder: (context) => const ExpositorDetailsScreen()),
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
