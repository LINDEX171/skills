import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Card(
            elevation: 5, // Ombre de la carte
            shape: RoundedRectangleBorder( // Forme arrondie
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              leading: Icon(Icons.info),
              title: Text('Titre de la Carte'),
              subtitle: Text('Sous-titre de la carte'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Action lorsqu'on appuie sur la carte
                print('Card tapped!');
              },
            ),
          ),
          SizedBox(height: 20),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              leading: Icon(Icons.star),
              title: Text('Autre Carte'),
              subtitle: Text('Détails supplémentaires'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('Autre card tapped!');
              },
            ),
          ),
        ],
      ),
      );
  }
}
