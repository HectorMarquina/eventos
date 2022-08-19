import 'package:appeventos01/widgets/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eventos',
      initialRoute: 'home',
      routes: {
        'home': (_) => Splash(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(color: Colors.blueGrey),
      ),
    );
  }
}
