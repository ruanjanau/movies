import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/extensions/extensions.dart';
import '../../core/life_cycle/life_cycle.dart';
import '../../core/ui/components/back_component.dart';
import 'controllers/controllers.dart';
import 'widgets/widgets.dart';

class MoviesPage extends StatefulWidget {
  final String? genre;
  const MoviesPage({super.key, this.genre});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState
    extends PageLifeCycleState<MoviesController, MoviesPage> {
  String? genre;

  @override
  void initState() {
    super.initState();
    genre = widget.genre ?? Modular.args.data as String?;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackComponent(color: Colors.deepPurple),
            const Center(
              child: Text(
                'Filmes',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: 2.h),
            MoviesList(
              controller: controller,
              genre: genre ?? 'Nenhum filme encontrado',
            ),
          ],
        ),
      ),
    );
  }
}
