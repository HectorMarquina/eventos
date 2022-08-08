import 'package:appeventos01/widgets/menu2.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
import 'patrocinadores/patrocinadores_details_screen.dart';
import 'home_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const Padding(
                        //   padding: EdgeInsets.symmetric(horizontal: 20),
                        //   child: Text(
                        //     'Platino',
                        //     style: TextStyle(
                        //         fontSize: 20, fontWeight: FontWeight.bold),
                        //   ),
                        // ),
                        Container(
                          height: 90,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 20,
                            itemBuilder: (_, int index) {
                              return _PatrocinadoresPlatinoPic();
                            },
                          ),
                        ),

                        GridMenu(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: DrawerApp(),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.blueGrey,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        //Quitar el padding
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          color: Colors.black12,
          child: const Text(
            'VIRTUAL FORUM CDK',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        background: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage(
              'https://ciep.mx/wp-content/uploads/2019/09/placeholder.png'),

          //fit para expandirla sin perder las dimensiones de la imagen
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PatrocinadoresPlatinoPic extends StatelessWidget {
  const _PatrocinadoresPlatinoPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: 90,
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
                MaterialPageRoute(
                    builder: (context) => const PatrocinadoresDetailsScreen()),
              );
            },
            child: ClipRRect(
              // borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage(
                    'https://ciep.mx/wp-content/uploads/2019/09/placeholder.png'),
                width: 89,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // const SizedBox(
          //   height: 5,
          // ),
          Container(
            width: double.infinity,
            //color: Colors.black12,
            child: const Text(
              'Rango',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
