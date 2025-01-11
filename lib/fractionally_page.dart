import 'package:flutter/material.dart';

class FractionallyPage extends StatefulWidget {
  const FractionallyPage({super.key});

  @override
  State<FractionallyPage> createState() => _FractionallyPageState();
}

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
