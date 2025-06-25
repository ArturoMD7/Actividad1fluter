// lib/card.dart
import 'package:flutter/material.dart';


class Collage extends StatelessWidget {
  const Collage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: <Widget>[
        Image.asset(
              'assets/images/psalmos.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 500,
            ),
        Image.asset(
              'assets/images/amantes.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 500,
            ),
        Image.asset(
              'assets/images/rebelion.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 500,
            ),
        Image.asset(
              'assets/images/system.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 500,
            ),
        Image.asset(
              'assets/images/disturbed.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 500,
            ),
        Image.asset(
              'assets/images/allhope.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 500,
            ),
        Image.asset(
              'assets/images/nownow.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 500,
            ),
        Image.asset(
              'assets/images/issues.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 500,
            ),
        Image.asset(
              'assets/images/one.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 500,
            ),
      ],
    );
  }
}
/*/
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
              fit: BoxFit.,
              width: double.infinity,
              height: 500,
            ),
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
*/