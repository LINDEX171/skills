import 'package:flutter/material.dart';

class ClipovalPage extends StatefulWidget {
  const ClipovalPage({super.key});

  @override
  State<ClipovalPage> createState() => _ClipovalPageState();
}

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
