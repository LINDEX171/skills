import 'package:flutter/material.dart';

class FractionallyPage extends StatefulWidget {
  const FractionallyPage({super.key});

  @override
  State<FractionallyPage> createState() => _FractionallyPageState();
}
//
// Plutôt que de définir une taille absolue (comme dans width ou height),
// FractionallySizedBox permet de spécifier la taille relative du widget
// par rapport à l'espace disponible.
class _FractionallyPageState extends State<FractionallyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: FractionallySizedBox(
            heightFactor: 0.5,
            widthFactor: 0.7,
            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.orange), onPressed: () =>() {

            } , child: Text("button")),
          ),
        ),
      ),
    );
  }
}
