import 'package:flutter/material.dart';

class StarsComponent extends StatelessWidget {
  final double stars;

  const StarsComponent({
    super.key,
    required this.stars,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Avaliação',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Icon(
          Icons.stars,
          color: Colors.grey,
          size: 30.0,
        ),
        const SizedBox(height: 4.0),
        Text(
          stars.toString(),
          style: const TextStyle(
            color: Colors.yellow,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
