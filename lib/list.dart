// lib/card.dart
import 'package:flutter/material.dart';


class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(5),
        children: [
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Tarea progamacion movil'),),
          ),
          Container(
            height: 50,
            color: const Color.fromARGB(255, 75, 134, 40),
            child: const Center(child: Text('Tarea Sistemas Inteligentes'),),
          ),
          Container(
            height: 50,
            color: const Color.fromARGB(255, 66, 161, 130),
            child: const Center(child: Text('Tarea Ingles'),),
          ),
        ],
      ),
    );
  }
}
