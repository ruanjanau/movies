import 'package:flutter/material.dart';

class WarningComponent extends StatelessWidget {
  final String title;
  const WarningComponent({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 26,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ));
  }
}
