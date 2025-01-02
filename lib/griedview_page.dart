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
      body: GridView.builder(
        itemCount: 10,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
          );
        },
      ),
    );
  }
}
