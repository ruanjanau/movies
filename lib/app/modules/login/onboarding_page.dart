import 'package:flutter/material.dart';

import '../../core/routes/app_routes.dart';
import '../../core/ui/components/animated_button.dart';
import '../../core/utils/utils.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.login,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Assets.pipoca),
                    const SizedBox(height: 10.0),
                    const Text(
                      'Prepare a pipoca',
                      style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    AnimatedBorderButton(
                      text: 'Vamos lá',
                      onPressed: () => AppRoutes.goToHome(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
