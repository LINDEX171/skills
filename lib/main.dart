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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('PageView avec SmoothPageIndicator')),
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
