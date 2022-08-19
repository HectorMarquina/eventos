import 'package:flutter/material.dart';

class AgregarNotaPostersScreen extends StatelessWidget {
  const AgregarNotaPostersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Nombre del Poster'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.save_as_outlined)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black12,
              width: double.infinity,
              height: 25,
              child: const Center(
                child: Text('Las notas son privadas, solo las verás tú.'),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.transparent)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: const InputDecoration(border: InputBorder.none),
                  maxLines: null,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
