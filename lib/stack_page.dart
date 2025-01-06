import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image avec Badge')),
      body: Center(
       child: GestureDetector(onTap: () => print('Widget tapé !'), child: Container(
         color: Colors.blue,
         width: 100,
         height: 100,
       ),),
      ),
    );
  }
}



