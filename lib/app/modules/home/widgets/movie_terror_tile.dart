import 'package:flutter/material.dart';

class MovieTerrorTile extends StatelessWidget {
  const MovieTerrorTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 9.0,
          crossAxisSpacing: 2.0,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16.0),
              ),
              height: 180.0,
              width: 126.0,
            ),
          );
        },
      ),
    );
  }
}
