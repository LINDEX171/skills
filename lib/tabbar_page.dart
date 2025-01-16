import 'package:flutter/material.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({super.key});

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  int _selectedIndex = 0; // Index de la catégorie sélectionnée
  final List<String> _categories = ["Toutes", "Non lues", "Favoris", "Groupes"];
  final List<Widget> _contentategories = [
    Container(height: 200,width: 200,color: Colors.black,),
    Container(height: 200,width: 200,color: Colors.orange,),
    Container(height: 200,width: 200,color: Colors.purple,),
    Container(height: 200,width: 200,color: Colors.grey,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(title: Text("tabbar")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
             itemCount: _categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index; // Met à jour l'index sélectionné
                      });
                    },
                    child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Chip(
                backgroundColor:
                _selectedIndex == index ? Colors.deepOrange : Colors.white,
                label: Text(
                _categories[index],
                style: TextStyle(
                color: _selectedIndex == index ? Colors.white : Colors.black,
                ),
                ),
                ), ),
                );
              },
            ),
          ),
          _contentategories[_selectedIndex]
          
        ],
      ),
    );
  }

}
