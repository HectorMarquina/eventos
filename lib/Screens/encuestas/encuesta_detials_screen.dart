import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../widgets/drawer.dart';

class EncuestaDetailsScreen extends StatelessWidget {
  const EncuestaDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(5, (i) => 'items $i');
    final items2 = List<String>.generate(3, (i) => 'items $i');
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Encuestas'),
      ),
      drawer: DrawerApp(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              //height: ,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  'Once that is all installed, it is time to get your LCD monitor put into the rack mount. This will allow you to slide your monitor and keyboard in and out from the desk. Overall it will save you a great deal of space. Make sure you carefully follow the directions and precautions contained in them. That will keep your equipment safe and your system stable. Once installed, you will be able to start using everything inmediately.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Card(
                elevation: 5,
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '*9:00 h. "ACTO INAGURAL"',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 8, bottom: 8),
                            child: Text(
                              'Invitada especial: ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, right: 8, bottom: 8),
                            child: Text(
                              'Dña. Betty Gfl',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'CRECIMIENTO Y COMPETITIVIDAD',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Moderador / Moderador: D. Antonio García, Presidente de GDK',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 50),
                              child: DropdownButtonFormField<String>(
                                //Valor Admin por defecto
                                value: '0',
                                items: const [
                                  DropdownMenuItem(
                                    value: '0',
                                    child: Text('Sleccione una opción'),
                                  ),
                                  DropdownMenuItem(
                                    value: '1',
                                    child: Text('1'),
                                  ),
                                  DropdownMenuItem(
                                    value: '2',
                                    child: Text('2'),
                                  ),
                                  DropdownMenuItem(
                                    value: '3',
                                    child: Text('3'),
                                  ),
                                  DropdownMenuItem(
                                    value: '4',
                                    child: Text('4'),
                                  ),
                                ],
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Card(
                elevation: 5,
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '11:00 h. "Nuevos enfoques en la gestión de GDK"',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 50),
                              child: DropdownButtonFormField<String>(
                                //Valor Admin por defecto
                                value: '0',
                                items: const [
                                  DropdownMenuItem(
                                    value: '0',
                                    child: Text('Sleccione una opción'),
                                  ),
                                  DropdownMenuItem(
                                    value: '1',
                                    child: Text('1'),
                                  ),
                                  DropdownMenuItem(
                                    value: '2',
                                    child: Text('2'),
                                  ),
                                  DropdownMenuItem(
                                    value: '3',
                                    child: Text('3'),
                                  ),
                                  DropdownMenuItem(
                                    value: '4',
                                    child: Text('4'),
                                  ),
                                ],
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Card(
                elevation: 5,
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '12:30 h. "Real State"',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RatingBar.builder(
                                  itemCount: 5,
                                  initialRating: 0,
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                  itemBuilder: (_, __) {
                                    return const Icon(Icons.star);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Card(
                elevation: 5,
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '* ¿Qué opinión le han merecido los GDK Meetings?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Card(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RadioExample()),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Card(
                elevation: 5,
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Indique que aspectos del evento mejoraría para futuras ediciones',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Card(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.transparent)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: TextField(
                                        decoration: const InputDecoration(
                                            border: InputBorder.none),
                                        maxLines: null,
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Card(
                elevation: 5,
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Otros comentarios',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Card(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.transparent)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: TextField(
                                        decoration: const InputDecoration(
                                            border: InputBorder.none),
                                        maxLines: null,
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1,
                                      ),
                                    ),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              child: Text('Enviar'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  textStyle: TextStyle(
                    fontSize: 18,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class RadioExample extends StatefulWidget {
  @override
  State createState() => new _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  int? _groupValue;

  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    _focusNodes = Iterable<int>.generate(4).map((e) => FocusNode()).toList();

    _focusNodes[0].requestFocus();
  }

  Widget _buildItem(String text, int value, FocusNode focusNode) {
    return ListTile(
      title: Text(text),
      leading: Radio<int>(
        groupValue: _groupValue,
        value: value,
        onChanged: (int? value) {
          setState(() {
            _groupValue = value;
          });
        },
        // hoverColor: Colors.yellow,
        // activeColor: Colors.pink,
        // focusColor: Colors.purple,
        fillColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.orange;
          } else if (states.contains(MaterialState.selected)) {
            return Colors.blueGrey;
          }
          if (states.contains(MaterialState.focused)) {
            return Colors.blue;
          } else {
            return Colors.black12;
          }
        }),
        overlayColor:
            MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return Colors.lightGreenAccent;
          }
          if (states.contains(MaterialState.focused)) {
            return Colors.brown;
          } else {
            return Colors.white;
          }
        }),
        splashRadius: 25,
        toggleable: true,
        visualDensity: VisualDensity.compact,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        focusNode: focusNode,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildItem("Muy buena", 1, _focusNodes[0]),
        _buildItem("Buena", 2, _focusNodes[1]),
        _buildItem("Regular", 3, _focusNodes[2]),
        _buildItem("Mejorable", 4, _focusNodes[3]),
      ],
    );
  }
}
