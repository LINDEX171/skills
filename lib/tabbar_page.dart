import 'package:flutter/material.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({super.key});

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  int _selectedIndex = 0; // Index de la catégorie sélectionnée
  final List<String> _categories = ["Toutes", "Non lues", "Favoris", "Groupes"];

  // Contenu à afficher pour chaque catégorie
  final List<Widget> _categoryContent = [
    Center(child: Text("Contenu pour Toutes", style: TextStyle(fontSize: 18))),
    Center(child: Text("Contenu pour Non lues", style: TextStyle(fontSize: 18))),
    Center(child: Text("Contenu pour Favoris", style: TextStyle(fontSize: 18))),
    Center(child: Text("Contenu pour Groupes", style: TextStyle(fontSize: 18))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(title: Text("Tabbar")),
      body: Column(
        children: [
          SizedBox(
            height: 60,
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
                      backgroundColor: _selectedIndex == index
                          ? Colors.deepOrange
                          : Colors.white,
                      label: Text(
                        _categories[index],
                        style: TextStyle(
                          color: _selectedIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            // Affiche le contenu correspondant à la catégorie sélectionnée
            child: _categoryContent[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
