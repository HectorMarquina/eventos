import 'package:flutter/material.dart';

import 'components/agenda_details_screen.dart';

class BottonTabAgenda extends StatefulWidget {
  BottonTabAgenda({Key? key}) : super(key: key);

  @override
  State<BottonTabAgenda> createState() => _BottonTabAgendaState();
}

class _BottonTabAgendaState extends State<BottonTabAgenda> {
  int currentIndex = 0;
  final screens = [
    AgendaScreen(),
    MiAgendaScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            label: 'Agenda',
            icon: Icon(Icons.calendar_today_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Mi agenda',
            icon: Icon(Icons.perm_contact_calendar_outlined),
          ),
        ],
        //),
      ),
    );
  }
}

class AgendaScreen extends StatelessWidget {
  const AgendaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(5, (i) => 'items $i');
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 70,
                    //color: Colors.amber,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (_, int index) {
                        return _datesView();
                      },
                    ),
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
                            subtitle: Transform.translate(
                              offset: Offset(-48, 0),
                              child: Text(
                                'Hora del evento',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
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
                            subtitle: Transform.translate(
                              offset: Offset(-48, 0),
                              child: Text(
                                'Hora del evento',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
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

class _datesView extends StatelessWidget {
  const _datesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: 120,
      height: size.height,
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
                MaterialPageRoute(builder: (context) => const AgendaScreen()),
              );
            },
            child: Container(
              //color: Colors.blueGrey,
              width: double.infinity,

              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.grey[100],
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                topLeft: Radius.circular(5),
                              ),
                              color: Colors.black12,
                            ),
                            //
                            width: 65,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                '12',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 88, 87, 87),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            width: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                children: [
                                  Text(
                                    'MAR',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromARGB(255, 88, 87, 87),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'SEP',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromARGB(255, 88, 87, 87),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(
          //   height: 5,
          // ),
        ],
      ),
    );
  }
}

class MiAgendaScreen extends StatelessWidget {
  const MiAgendaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda'),
        actions: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child:
          //       IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
          // )
        ],
      ),
      body: Text('-----------------------------------------'),
    );
  }
}
