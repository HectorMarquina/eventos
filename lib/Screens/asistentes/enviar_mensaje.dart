import 'package:flutter/material.dart';
import '../../widgets/custom_input_field.dart';

class EnviarMensajeScreen extends StatelessWidget {
  const EnviarMensajeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //key del estado del formulario
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firt_name': 'Daniel',
      'last_name': 'Marquina',
      'email': 'saiko.daniel1401@gmail.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nombre Asistente'),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: const [
                    SizedBox(
                      //color: Colors.amber,
                      width: double.infinity,
                      child: Text(
                        'Asunto',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        //textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              // borderRadius:
                              //     BorderRadius.all(new Radius.circular(25.0),
                              //   ),
                              ),
                          //labelText: 'Asunto',
                          hintMaxLines: 3),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      //color: Colors.amber,
                      width: double.infinity,
                      child: Text(
                        'Mensaje',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        //textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        //labelText: 'Mensaje',
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
