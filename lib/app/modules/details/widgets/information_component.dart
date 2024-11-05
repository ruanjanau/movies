import 'package:flutter/material.dart';

class InformationComponent extends StatelessWidget {
  final String info;
  final String title;
  final IconData icon;
  const InformationComponent({
    super.key,
    required this.info,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2.0),
        Icon(
          icon,
          color: Colors.grey,
          size: 30.0,
        ),
        const SizedBox(height: 4.0),
        Text(
          info,
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
