import 'package:flutter/material.dart';

class SpacerPage extends StatefulWidget {
  const SpacerPage({super.key});

  @override
  State<SpacerPage> createState() => _SpacerPageState();
}

// le widget Spacer est un widget utilisé pour ajouter de
// l'espace flexible entre les widgets dans un layout.

class _SpacerPageState extends State<SpacerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     body: Center(
       child: Row(children: [
         Icon(Icons.star),
         Spacer(flex: 1),
         Icon(Icons.access_alarm),
         Spacer(flex: 2),
         Icon(Icons.accessibility_outlined),
         Spacer()
       ]),
     ),
    );
  }
}
