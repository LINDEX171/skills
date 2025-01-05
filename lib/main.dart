import 'package:flutter/material.dart';
import 'package:skills/griedview_page.dart';
import 'package:skills/stack_page.dart';
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
      home: StackPage(),
    );
  }
}
