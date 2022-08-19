import 'package:flutter/material.dart';
import '../../../kernel/config/drawer_navigation.dart';
import '../../schedule/screens/components/schedule_details_screen.dart';

class PreguntasAlPonenteScreen extends StatelessWidget {
  const PreguntasAlPonenteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(5, (i) => 'items $i');
    final items2 = List<String>.generate(3, (i) => 'items $i');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preguntas al ponente'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
          )
        ],
      ),
      drawer: DrawerApp(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
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
                              '2 de septiembre de 2020',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 25,
                            child: Container(
                              margin: EdgeInsets.only(top: 0),
                              color: Colors.grey[200],
                              child: Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 7),
                                    child: Text(
                                      '12:00 PM',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.only(
                              top: 1,
                              bottom: 1,
                            ),
                            leading: Container(
                              padding: EdgeInsets.zero,
                              width: 5,
                              color: Colors.amber,
                            ),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_outlined),
                            title: Transform.translate(
                              offset: Offset(-48, 0),
                              child: Text('Nombre del evento'),
                            ),
                            subtitle: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: items2.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    alignment: Alignment(-1.4, 0.0),
                                    // color: Colors.blueAccent,
                                    child: Column(
                                      children: [
                                        Text("Nombre del ponente"),
                                      ],
                                    ),
                                  );
                                }),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AgendaDetailsScreen()),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
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
                              '3 de septiembre de 2020',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 25,
                            child: Container(
                              margin: EdgeInsets.only(top: 0),
                              color: Colors.grey[200],
                              child: Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 7),
                                    child: Text(
                                      '13:00 PM',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.only(
                              top: 1,
                              bottom: 1,
                            ),
                            leading: Container(
                              padding: EdgeInsets.zero,
                              width: 5,
                              color: Colors.amber,
                            ),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_outlined),
                            title: Transform.translate(
                              offset: Offset(-48, 0),
                              child: Text('Nombre del evento'),
                            ),
                            subtitle: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: items2.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    alignment: Alignment(-1.4, 0.0),
                                    // color: Colors.blueAccent,
                                    child: Column(
                                      children: [
                                        Text("Nombre del ponente"),
                                      ],
                                    ),
                                  );
                                }),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AgendaDetailsScreen()),
                              );
                            },
                          ),
                        ],
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
