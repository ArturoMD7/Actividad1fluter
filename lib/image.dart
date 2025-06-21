// lib/card.dart
import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            Image.asset(
              'assets/images/psalmos.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 500,
            ),

          ],
        ),
      ),
    );
  }
}
