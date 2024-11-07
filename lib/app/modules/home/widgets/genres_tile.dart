import 'package:flutter/material.dart';

class GenresTile extends StatelessWidget {
  final Function()? onTap;
  final String genre;
  final String image;
  const GenresTile({
    super.key,
    required this.genre,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: Colors.deepPurple,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            genre,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
