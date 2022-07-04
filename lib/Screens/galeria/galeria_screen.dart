// import 'package:flutter/material.dart';

// import '../drawer.dart';

// class GaleriaScreen extends StatelessWidget {
//   const GaleriaScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Galería'),
//       ),
//       drawer: DrawerApp(),
//       body: GridView.count(
//         crossAxisSpacing: 1,
//         mainAxisSpacing: 1,
//         // Crea un grid con 2 columnas. Si cambias el scrollDirection a
//         // horizontal, esto produciría 2 filas.
//         crossAxisCount: 4,
//         // Genera 100 Widgets que muestran su índice en la lista
//         children: List.generate(
//           50,
//           (index) {
//             index++;
//             return Center(
//               child: FadeInImage(
//                 placeholder: const AssetImage('assets/loading.gif'),
//                 image: NetworkImage(
//                     'https://i.pinimg.com/736x/3c/02/c0/3c02c07c231fd281808c734e26a6aacb.jpg'),
//                 width: size.width,
//                 height: size.height,
//                 //fit para expandirla sin perder las dimensiones de la imagen
//                 fit: BoxFit.cover,
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class GaleriaScreen extends StatelessWidget {
  const GaleriaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Gallery(),
    );
  }
}

class Gallery extends StatefulWidget {
  Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
