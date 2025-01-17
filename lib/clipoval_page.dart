import 'package:flutter/material.dart';

class ClipovalPage extends StatefulWidget {
  const ClipovalPage({super.key});

  @override
  State<ClipovalPage> createState() => _ClipovalPageState();
}
//
// ClipOval en Flutter permet de découper un widget enfant en forme
// d'ellipse ou de cercle.

class _ClipovalPageState extends State<ClipovalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ClipOval(
          child: Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      )),
    );
  }
}
