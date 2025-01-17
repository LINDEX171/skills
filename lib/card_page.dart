import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  const CardPage({super.key});


  // un Card est un widget qui permet de créer une vue en forme de carte,
  // avec un design généralement arrondi et un ombrage pour donner un effet
  // de profondeur

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 400,
        width: 200,
        child: Card(
          color: Colors.orange,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network('https://th.bing.com/th/id/R.b46d1ed422dccbfe1310814fcbe77688?rik=RfqrC3rKCP1%2fWw&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fcards-hd-png-playing-cards-png-2030.png&ehk=sXTpg%2bLeUkb3D0JZMtkVtOszpJ%2f%2b7EqpQt8N2oPMmOk%3d&risl=1&pid=ImgRaw&r=0'), // Image dans la carte
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Titre avec Image',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Sous-titre ou description de la carte'),
              ),
            ],
          ),
        ),
      )
      ,
      );
  }
}
