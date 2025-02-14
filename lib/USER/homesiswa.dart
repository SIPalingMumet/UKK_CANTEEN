import 'package:flutter/material.dart';

class Homeage extends StatefulWidget {
  const Homeage({super.key});

  @override
  State<Homeage> createState() => _HomeageState();
}

class _HomeageState extends State<Homeage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text("Ini Home Age Der Kaiser et Panzer")
        ],
      ),
    );
  }
}