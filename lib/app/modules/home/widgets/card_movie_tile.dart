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
      ),
    );
  }
}
