// lib/card.dart
import 'package:flutter/material.dart';

class CardData {
  final String imagePath;
  final String title;
  final String subtitle;

  CardData({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });
}

final List<CardData> cards = [
    CardData(
      imagePath: 'assets/images/psalmos.png',
      title: 'Psalmos',
      subtitle: 'Album by: Jose Madero'
    ),
    CardData(
      imagePath: 'assets/images/nownow.png',
      title: 'The Now Now',
      subtitle: 'Album by: Gorillaz'
    ),
    CardData(
      imagePath: 'assets/images/amantes.png',
      title: 'Amantes Suntamentes',
      subtitle: 'Album by: PXNDX'
    ),
  ];

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: cards.length,
      itemBuilder: (context, index){
        final card = cards[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          elevation: 4,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(card.imagePath, fit: BoxFit.cover, width: double.infinity, height: 420),
              ListTile(
                leading: const Icon(Icons.album),
                title: Text(card.title),
                subtitle: Text(card.subtitle),
              ),
            ],
          ),
        );
      },
    );
  }
}

