import 'package:flutter/material.dart';

// Lista de imágenes con sus descripciones
final List<Map<String, String>> collageImages = [
  {
    'path': 'assets/images/psalmos.png',
    'description': 'Álbum: Psalmos de José Madero',
  },
  {
    'path': 'assets/images/amantes.png',
    'description': 'Álbum: Amantes Sunt Amentes de PXNDX',
  },
  {
    'path': 'assets/images/rebelion.png',
    'description': 'Álbum: Rebelion de Parasyche',
  },
  {
    'path': 'assets/images/system.png',
    'description': 'Álbum: Toxicity de System of a Down',
  },
  {
    'path': 'assets/images/disturbed.png',
    'description': 'Álbum: Indestructible de Disturbed',
  },
  {
    'path': 'assets/images/allhope.png',
    'description': 'Álbum: All Hope is Gone de Slipknot',
  },
  {
    'path': 'assets/images/nownow.png',
    'description': 'Álbum: The Now Now de Gorillaz',
  },
  {
    'path': 'assets/images/issues.png',
    'description': 'Álbum: Issues de Korn',
  },
  {
    'path': 'assets/images/one.png',
    'description': 'Álbum: ...One X de Three days grace',
  },
];

class Collage extends StatelessWidget {
  const Collage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: collageImages.map((imageData) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => FullImageScreen(
                  imagePath: imageData['path']!,
                  description: imageData['description']!,
                ),
              ),
            );
          },
          child: Image.asset(
            imageData['path']!,
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
    );
  }
}

// Pantalla individual para mostrar imagen y descripción
class FullImageScreen extends StatelessWidget {
  final String imagePath;
  final String description;

  const FullImageScreen({
    super.key,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Imagen')),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
              width: double.infinity,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              description,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
