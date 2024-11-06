import 'package:flutter/material.dart';

class NewsComponent extends StatelessWidget {
  final Function()? onTap;
  const NewsComponent({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 270,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Center(
          child: GestureDetector(
            onTap: onTap,
            child: const Text(
              'Ver notícias de hollywood',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
