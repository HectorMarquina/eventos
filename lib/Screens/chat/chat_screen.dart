import 'package:appeventos01/Screens/chat/chats_details.dart';
import 'package:flutter/material.dart';

import '../drawer.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final items = List<String>.generate(5, (i) => 'items $i');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      drawer: DrawerApp(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ChatDetailsScreen()),
                              );
                            },
                            child: Card(
                              //color: Colors.black12,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              elevation: 2,

                              // Dentro de esta propiedad usamos ClipRRect
                              child: ClipRRect(
                                // Los bordes del contenido del card se cortan usando BorderRadius
                                borderRadius: BorderRadius.circular(25),

                                // EL widget hijo que será recortado segun la propiedad anterior
                                child: Column(
                                  children: <Widget>[
                                    // Usamos el widget Image para mostrar una imagen
                                    Stack(
                                      children: [
                                        Image(
                                          // Como queremos traer una imagen desde un url usamos NetworkImage
                                          image: NetworkImage(
                                              'https://www.unfe.org/wp-content/uploads/2019/04/SM-placeholder.png'),
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5),
                                          child: Container(
                                            height: 50,
                                            width: size.width,
                                            color: Colors.transparent,
                                            alignment: Alignment.centerRight,
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.blueGrey[400],
                                              child: const Text(
                                                '15',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: size.width,
                                      height: 40,
                                      color: Colors.black45,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Nombre del chat',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
