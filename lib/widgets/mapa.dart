import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../Screens/expositores/expositor_details_screen.dart';

class Mapa extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Mapa> {
  late GoogleMapController myController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    myController = controller;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: size.width,
            child: Stack(
              children: <Widget>[
                GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 10.0,
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(14.0),
                //   child: Align(
                //     alignment: Alignment.topRight,
                //     child: FloatingActionButton(
                //       onPressed: () => print('You have pressed the button'),
                //       materialTapTargetSize: MaterialTapTargetSize.padded,
                //       backgroundColor: Colors.blueGrey,
                //       child: const Icon(Icons.map, size: 30.0),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: size.width,
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Nombre del expositor',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Expositores',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            tileColor: Colors.white,
            leading: Container(
              width: 50,
              child: FadeInImage(
                placeholder: const AssetImage('assets/no-image.jpg'),
                image: NetworkImage(
                    'https://png.pngtree.com/template/20191014/ourlarge/pngtree-real-estate-business-logo-template-building-property-development-and-construction-logo-image_317796.jpg'),
                height: 150,
                width: 110,
                //fit: BoxFit.cover,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Nombre del expositor'),
            //subtitle: new Text(''),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ExpositorDetailsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
