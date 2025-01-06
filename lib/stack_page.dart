import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image avec Badge')),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none, // Permet de gérer les éléments qui dépassent
          children: [
            // Image de profil
            CircleAvatar(
              radius: 50, // Taille de l'image
              backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.POYKy-CDp5DUJymdQ9myXQHaHj?rs=1&pid=ImgDetMain'), // Chemin de l'image
            ),

            // Badge
            Positioned(
              bottom: -5, // Position verticale
              right: -5, // Position horizontale
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white, // Bordure blanche autour du badge
                    width: 2,
                  ),
                ),
                child: Icon(
                  Icons.check, // Icône dans le badge
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



