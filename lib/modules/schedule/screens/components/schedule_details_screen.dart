import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../speakers/screens/components/ponentes_details_screen.dart';
import 'add_note_schedule_screen.dart';

class AgendaDetailsScreen extends StatelessWidget {
  const AgendaDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(3, (i) => 'items $i');
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Nombre del evento'),
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
                                const AgregarNotaAgendaScreen()),
                      );
                    },
                    icon: Icon(Icons.edit_note_outlined)),
                IconButton(onPressed: () {}, icon: Icon(Icons.calendar_month)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.edit_calendar_sharp)),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: size.width,
                    //color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Nombre del evento',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month_rounded),
                              Text('1 de septiembre de 2020')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.watch_later_outlined),
                              Text('12:30 p.m - 01:00 p.m')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'Valorar',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.start,
                      ),
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
                  Container(
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ' Toda la descripción del Evento va insertada aquí. Toda la descripción del Evento va insertada aquí. Toda la descripción del Evento va insertada aquí. Toda la descripción del Evento va insertada aquí.  ',
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(primary: Colors.red[400]),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AgendaDetailsScreen()),
                      );
                    },
                    label: Text('Live Streaming'),
                    icon: Icon(Icons.videocam_outlined),
                  ),
                  const SizedBox(
                    height: 15,
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
                            trailing:
                                const Icon(Icons.arrow_forward_ios_outlined),
                            title: Text('Nombre del ponente'),
                            subtitle: new Text('Cargo del ponente'),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PonentesDetailsScreen()),
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
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      ListTile(
                        tileColor: Colors.white,
                        leading: Icon(
                          Icons.mic_outlined,
                          size: 50,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined),
                        title: Text('Preguntas al ponente'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PonentesDetailsScreen()),
                          );
                        },
                      ),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'Votación',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.pending_actions_outlined,
                      size: 50,
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    title: Text('Live voting'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const PonentesDetailsScreen()),
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
