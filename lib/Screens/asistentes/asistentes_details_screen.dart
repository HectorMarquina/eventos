import 'package:appeventos01/Screens/asistentes/agregar_nota_asistentes_screen.dart';
import 'package:appeventos01/Screens/asistentes/enviar_mensaje.dart';
import 'package:flutter/material.dart';

class AsistentesDetailsScreen extends StatelessWidget {
  const AsistentesDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //? LISTA DE ESTOY BUSCANDO
    List<Widget> list = List<Widget>.from(
        {"Aplicaciones web", "Aplicaciones móviles", "Soporte"}
            .map((tag) => Chip(
                  label: Text(
                    tag,
                  ),
                ))
            .toList());

//? LISTA DE SOY
    List<Widget> list2 =
        List<Widget>.from({"Aplicaciones web", "Aplicaciones móviles"}
            .map((tag) => Chip(
                  label: Text(
                    tag,
                  ),
                ))
            .toList());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nombre Asistente'),
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
                                const AgregarNotaAsistentesScreen()),
                      );
                    },
                    icon: Icon(Icons.edit_note_outlined)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.star_border_outlined)),
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
                      'https://www.geekmi.news/__export/1619631525888/sites/debate/img/2021/04/28/luffy1.jpg_1339198940.jpg',
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
                        'Cargo completo',
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
            // Container(
            //   height: 55,
            //   margin: EdgeInsets.only(top: 0),
            //   color: Colors.black12,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 7),
            //     child: Row(
            //       children: [
            //         IconButton(
            //           icon: const Icon(Icons.language_outlined),
            //           iconSize: 30,
            //           tooltip: 'Ir al enlace',
            //           onPressed: () {},
            //         ),
            //         IconButton(
            //           icon: const Icon(Icons.email_outlined),
            //           iconSize: 30,
            //           tooltip: 'Ir al enlace',
            //           onPressed: () {},
            //         ),
            //         IconButton(
            //           icon: const Icon(Icons.language_outlined),
            //           iconSize: 30,
            //           tooltip: 'Ir al enlace',
            //           onPressed: () {},
            //         ),
            //         IconButton(
            //           icon: const Icon(Icons.language_outlined),
            //           iconSize: 30,
            //           tooltip: 'Ir al enlace',
            //           onPressed: () {},
            //         ),
            //         IconButton(
            //           icon: const Icon(Icons.facebook_outlined),
            //           iconSize: 30,
            //           tooltip: 'Ir al enlace',
            //           onPressed: () {},
            //         ),
            //         IconButton(
            //           icon: const Icon(Icons.language_outlined),
            //           iconSize: 30,
            //           tooltip: 'Ir al enlace',
            //           onPressed: () {},
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Column(
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EnviarMensajeScreen()),
                      );
                    },
                    label: Text('Enviar Mensaje'),
                    icon: Icon(Icons.send_outlined),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    //color: Colors.amber,
                    width: double.infinity,
                    child: Text(
                      'Estoy buscando',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      //textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: size.width - 20,
                    ),
                    child: Wrap(
                      verticalDirection: VerticalDirection.down,
                      spacing: 5.0,
                      runSpacing: 10.0,
                      children: list,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    //color: Colors.amber,
                    width: double.infinity,
                    child: Text(
                      'Yo soy',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      //textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: size.width - 20,
                    ),
                    child: Wrap(
                      verticalDirection: VerticalDirection.down,
                      spacing: 5.0,
                      runSpacing: 10.0,
                      children: list2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
