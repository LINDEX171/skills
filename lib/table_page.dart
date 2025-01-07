import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Table(
        border: TableBorder.all(),
        children: [
          TableRow(children: [
            Text('Colonne 1'),
            Text('Colonne 2'),
            Text('Colonne 3'),
          ]),
          TableRow(children: [
            Text('Colonne 1'),
            Text('Colonne 2'),
            Text('Colonne 3'),
          ])
        ],
      )),
    );
  }
}
