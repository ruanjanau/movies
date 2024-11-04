import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/routes/routes.dart';
import '../login/lodgin.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        const Duration(seconds: 5),
      );
      AppRoutes.goToLogin();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: AnimatedSplashScreen(
        splash: Center(
          child: LottieBuilder.asset(
            'assets/lottie/splash.json',
            width: 240,
            height: 240,
          ),
        ),
        splashIconSize: 200,
        backgroundColor: Colors.black87,
        nextScreen: const LoginPage(),
      ),
    );
  }
}
