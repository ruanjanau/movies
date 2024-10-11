import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final nav = Navigator.of(context);
      await Future.delayed(
        const Duration(seconds: 4),
      );
      nav.pushNamed(
        '/login',
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Icon(Icons.home, size: 80.0, color: Colors.white),
          ),
          const SizedBox(height: 80.0),
          LoadingAnimationWidget.hexagonDots(
            color: Colors.white,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
