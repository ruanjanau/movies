import 'package:flutter/material.dart';
import 'package:movies/app/core/routes/routes.dart';

import '../../core/ui/widgets/widgets.dart';
import '../../core/utils/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.login,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'CineOn',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Arial',
                      ),
                    ),
                    const SizedBox(height: 40),
                    const UserTile(
                      title: 'Usuário',
                      hintText: '...',
                    ),
                    const SizedBox(height: 20),
                    const PasswordTile(
                      title: 'Senha',
                      hintText: '...',
                    ),
                    const SizedBox(height: 40),
                    PrimaryButton(
                      title: 'Entrar',
                      onPressed: () {
                        AppRoutes.goToHome();
                      },
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
