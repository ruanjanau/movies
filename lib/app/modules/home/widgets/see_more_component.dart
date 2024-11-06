import 'package:flutter/material.dart';

class SeeMoreComponent extends StatelessWidget {
  const SeeMoreComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: Colors.deepPurple,
          width: 1.0,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(4.0),
        child: Text(
          'Ver mais',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
