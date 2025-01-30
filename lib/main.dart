import 'package:flutter/material.dart';
import 'package:ukk_kantin_2/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
      routes: {
        '/splash': (context) => const Splash (),
      },
    );
  }
}