import 'package:flutter/material.dart';

import '../../../core/routes/routes.dart';
import '../home.dart';

class CardMovieShortly extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final Function()? onTap;
  const CardMovieShortly({
    super.key,
    required this.id,
    required this.name,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: () => AppRoutes.goToDetails(id),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          height: double.infinity,
          width: 146.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Stack(
              children: [
                Image.network(
                  image,
                  fit: BoxFit.cover,
                  height: 220.0,
                  width: 146.0,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(1.0),
                        ],
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 8,
                  left: 60,
                  right: 8,
                  child: WarningComponent(
                    title: 'Em breve',
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.clip,
                      fontFamily: 'RobotoMono',
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
