import 'package:flutter/material.dart';


class ListwheelPage extends StatefulWidget {
  const ListwheelPage({super.key});

  @override
  State<ListwheelPage> createState() => _ListwheelPageState();
}

class _ListwheelPageState extends State<ListwheelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListWheelScrollView Example")),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 80, // Hauteur de chaque élément
          diameterRatio: 2, // Taille de la roue
          physics: FixedExtentScrollPhysics(), // Scroll limité aux éléments fixes
          children: [
            Container(color: Colors.blue,width: 200,height: 50,),
            Container(color: Colors.grey,width: 200,height: 50,),

            Container(color: Colors.blue,width: 200,height: 50,),
            Container(color: Colors.grey,width: 200,height: 50,),

            Container(color: Colors.blue,width: 200,height: 50,),
            Container(color: Colors.grey,width: 200,height: 50,),

            Container(color: Colors.blue,width: 200,height: 50,),
            Container(color: Colors.grey,width: 200,height: 50,),

            Container(color: Colors.blue,width: 200,height: 50,),
            Container(color: Colors.grey,width: 200,height: 50,),
            Container(color: Colors.blue,width: 200,height: 50,),
            Container(color: Colors.grey,width: 200,height: 50,),

          ],
        ),
      ),
    );
  }
}
