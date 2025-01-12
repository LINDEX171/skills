import 'package:flutter/material.dart';

class AspectratioPage extends StatefulWidget {
  const AspectratioPage({super.key});

  @override
  State<AspectratioPage> createState() => _AspectratioPageState();
}

class _AspectratioPageState extends State<AspectratioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AspectRatio Example')),
      body: Column(
        children: [
          Text('Widget avec un ratio 16:9', style: TextStyle(fontSize: 16)),
          AspectRatio(
            aspectRatio:
                16 / 9, // 16 unités de largeur pour 9 unités de hauteur
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  '16:9',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text('Widget avec un ratio 1:1', style: TextStyle(fontSize: 16)),
          AspectRatio(
            aspectRatio: 1 / 1, // Carré
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  '1:1',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
