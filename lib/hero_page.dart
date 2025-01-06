import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({super.key});

  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
          tag: 'tag1',
          child: ListTile(
            title: Text("hero widget"),
            leading: Icon(Icons.accessible),
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HeroDetails(),
                )),
          )),
    );
  }
}

class HeroDetails extends StatelessWidget {
  const HeroDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: Hero(
          tag: 'tag1',
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
            ),
          )),
    );
  }
}
