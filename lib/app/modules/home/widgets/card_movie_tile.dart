import 'package:flutter/material.dart';

class CardMovieTile extends StatelessWidget {
  const CardMovieTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16.0),
        ),
        height: 210.0,
        width: 146.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.network(
            'https://ingresso-a.akamaihd.net/prd/img/movie/a-forja-o-poder-da-transformacao/af623e40-b2c6-459e-ab40-db71808757ea.webp',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
