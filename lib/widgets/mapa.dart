// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// import '../Screens/expositores/expositor_details_screen.dart';

// class Mapa extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<Mapa> {
//   late GoogleMapController myController;

//   final LatLng _center = const LatLng(45.521563, -122.677433);

//   void _onMapCreated(GoogleMapController controller) {
//     myController = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Mapa'),
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 200,
//             width: size.width,
//             child: Stack(
//               children: <Widget>[
//                 GoogleMap(
//                   onMapCreated: _onMapCreated,
//                   initialCameraPosition: CameraPosition(
//                     target: _center,
//                     zoom: 10.0,
//                   ),
//                 ),
//                 // Padding(
//                 //   padding: const EdgeInsets.all(14.0),
//                 //   child: Align(
//                 //     alignment: Alignment.topRight,
//                 //     child: FloatingActionButton(
//                 //       onPressed: () => print('You have pressed the button'),
//                 //       materialTapTargetSize: MaterialTapTargetSize.padded,
//                 //       backgroundColor: Colors.blueGrey,
//                 //       child: const Icon(Icons.map, size: 30.0),
//                 //     ),
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//           Container(
//             height: 60,
//             width: size.width,
//             color: Colors.black12,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Nombre del expositor',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           Container(
//             width: size.width,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Expositores',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//           ListTile(
//             tileColor: Colors.white,
//             leading: Container(
//               width: 50,
//               child: FadeInImage(
//                 placeholder: const AssetImage('assets/no-image.jpg'),
//                 image: NetworkImage(
//                     'https://png.pngtree.com/template/20191014/ourlarge/pngtree-real-estate-business-logo-template-building-property-development-and-construction-logo-image_317796.jpg'),
//                 height: 150,
//                 width: 110,
//                 //fit: BoxFit.cover,
//               ),
//             ),
//             trailing: const Icon(Icons.arrow_forward_ios_outlined),
//             title: Text('Nombre del expositor'),
//             //subtitle: new Text(''),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => const ExpositorDetailsScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../modules/expositores/screens/components/expositor_details_screen.dart';

class Mapa extends StatefulWidget {
  Mapa({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Mapa> {
  static final LatLng center = const LatLng(18.9261, -99.23075);
  GoogleMapController? controller;
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  PageController _pageController = PageController(viewportFraction: 0.9);
  MarkerId? previousMarker;

  void _onMapCreated(GoogleMapController controller) {
    this.controller = controller;
  }

  @override
  void initState() {
    super.initState();

    _addMarkers();

    _pageController.addListener(() {
      int page = _pageController.page!.toInt();
      _highlightMaker(MarkerId("markerId$page"));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _highlightMaker(MarkerId markerId) {
    // select marker by id
    final Marker? marker = markers[markerId];

    if (marker != null) {
      setState(() {
        if (previousMarker != null) {
          final Marker resetOld = markers[previousMarker]!
              .copyWith(iconParam: BitmapDescriptor.defaultMarker);
          markers[previousMarker!] = resetOld;
        }

        // update the selected marker by changing the icon using copyWith() helper method
        final Marker newMarker = marker.copyWith(
          iconParam: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueGreen,
          ),
        );

        markers[markerId] = newMarker;
        previousMarker = newMarker.markerId;

        // zoom in to the selected camera position
        controller!.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
            bearing: 0,
            target: newMarker.position,
            zoom: 12.0,
          ),
        ));
      });
    }
  }

  void _addMarkers() {
    for (int i = 0; i < 1; i++) {
      String id = 'markerId$i';
      final MarkerId markerId = MarkerId(id);
      final Marker marker = Marker(
        markerId: markerId,
        position: LatLng(
          center.latitude,
          center.longitude,
        ),
        infoWindow: InfoWindow(title: id),
        onTap: () {
          _pageController.jumpToPage(i);
        },
      );
      setState(() {
        markers[markerId] = marker;
      });
    }
  }

  Widget _pageViewBuilder(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.8 / 2.5,
      child: PageView.builder(
        controller: _pageController,
        itemBuilder: (BuildContext context, int itemIndex) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://placeimg.com/640/480/any')),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Colors.redAccent,
            ),
          );
        },
        itemCount: 1,
      ),
    );
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
        children: <Widget>[
          Container(
            width: size.width,
            height: 200,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: const CameraPosition(
                target: LatLng(18.9261, -99.23075),
                zoom: 11.0,
              ),
              markers: Set<Marker>.of(markers.values),
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
