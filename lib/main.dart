import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_screen',
      routes: {
        'basic_desing' :(BuildContext context) => const BasicDesingScreen(),
        'scroll_desing':(BuildContext context) => const ScrollScreen(),
        'home_screen'  :(BuildContext context) => const HomeScreen(),
      },
    );
  }
}
