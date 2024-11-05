import 'package:flutter/material.dart';

class CardMoviesComponent extends StatelessWidget {
  const CardMoviesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      children: const [
        Text('CardMoviesComponent'),
      ],
    );
  }
}
