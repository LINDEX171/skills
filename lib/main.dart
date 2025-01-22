import 'package:flutter/material.dart';
import 'package:skills/Listwheelscrollview_page.dart';
import 'package:skills/utils/theme/theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.darkTheme,
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Cliquez-moi !'),
        ),
      ),
    );
  }
}