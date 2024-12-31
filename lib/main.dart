import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Définir un PageController pour contrôler le PageView
  PageController _controller = PageController();

  // Fonction appelée lorsqu'une option est sélectionnée dans le menu popup
  void _onMenuOptionSelected(String value) {
    // Gérer les actions en fonction de l'option sélectionnée
    switch (value) {
      case 'Option 1':
        print('Option 1 sélectionnée');
        break;
      case 'Option 2':
        print('Option 2 sélectionnée');
        break;
      case 'Option 3':
        print('Option 3 sélectionnée');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PageView avec SmoothPageIndicator'),
          actions: [
            // Ajout d'un PopupMenuButton dans l'AppBar
            PopupMenuButton<String>(

              onSelected: _onMenuOptionSelected,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'Option 1',
                    child: ListTile(leading: IconButton(onPressed: () {
                    }, icon: Icon(Icons.access_time_outlined)),title: Text("Time"), ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Text('Option 2'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 3',
                    child: Text('Option 3'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: Column(
          children: [
            // Utilisation de PageView pour les pages défilables
            Expanded(
              child: PageView(
                controller: _controller,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    child: Center(
                        child: Text('Page 1', style: TextStyle(fontSize: 30))),
                  ),
                  Container(
                    color: Colors.green,
                    child: Center(
                        child: Text('Page 2', style: TextStyle(fontSize: 30))),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Center(
                        child: Text('Page 3', style: TextStyle(fontSize: 30))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SmoothPageIndicator(
                controller: _controller, // Contrôleur de PageView
                count: 3, // Nombre total de pages
                effect: WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 16,
                  dotColor: Colors.black,
                  activeDotColor: Colors.blue,
                ),
              ),
            ),
            // Ajouter SmoothPageIndicator en bas pour montrer l'indicateur de la page courante
          ],
        ),
      ),
    );
  }
}
