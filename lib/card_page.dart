import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: Card(
            color: Colors.deepOrange,
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text("Je suis une carte"),
            ),
          ),
        ),
      ),
    );
  }
}
