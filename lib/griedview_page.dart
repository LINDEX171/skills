import 'package:flutter/material.dart';

class GriedviewPage extends StatefulWidget {
  const GriedviewPage({super.key});

  @override
  State<GriedviewPage> createState() => _GriedviewPageState();
}

class _GriedviewPageState extends State<GriedviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:GridView.count(crossAxisCount: 2,children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 50,width: 50,color: Colors.blue,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 50,width: 50,color: Colors.blue,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 50,width: 50,color: Colors.blue,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(height: 50,width: 50,color: Colors.blue,),
        )
      ]),

    );
  }
}
