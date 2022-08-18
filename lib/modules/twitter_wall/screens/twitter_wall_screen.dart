import 'package:flutter/material.dart';
import '../../../kernel/config/drawer_navigation.dart';

class TwitterWallScreen extends StatelessWidget {
  const TwitterWallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twitter Wall'),
      ),
      drawer: DrawerApp(),
      body: Center(
        child: Text('TwitterWallScreen'),
      ),
    );
  }
}
