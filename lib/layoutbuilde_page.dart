import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

//
// Le LayoutBuilder est un widget qui te permet de construire des
// interfaces en fonction des contraintes d'espace disponibles
// (comme la largeur et la hauteur). Il est super utile pour les designs
// responsives.

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          // Grand écran : afficher deux colonnes
          return Row(
            children: [
              Expanded(child: Container(color: Colors.blue, height: 200)),
              Expanded(child: Container(color: Colors.green, height: 200)),
            ],
          );
        } else {
          // Petit écran : afficher une seule colonne
          return Column(
            children: [
              Container(color: Colors.blue, height: 200),
              Container(color: Colors.green, height: 200),
            ],
          );
        }
      },),
    );
  }
}
