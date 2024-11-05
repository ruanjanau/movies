import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/life_cycle/life_cycle.dart';
import '../../core/routes/app_routes.dart';
import '../../core/utils/utils.dart';
import 'controllers/controllers.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends PageLifeCycleState<HomeController, HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(146, 210),
      minTextAdapt: true,
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'O que nós vamos assistir hoje?',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GenresTile(
                      genre: 'Ação',
                      image: Assets.messagesError,
                    ),
                    Spacer(),
                    GenresTile(
                      genre: 'Animação',
                      image: Assets.messagesError,
                    ),
                    Spacer(),
                    GenresTile(
                      genre: 'Comédia',
                      image: Assets.messagesError,
                    ),
                    Spacer(),
                    GenresTile(
                      genre: 'Drama',
                      image: Assets.messagesError,
                    ),
                    Spacer(),
                    GenresTile(
                      genre: 'Ficção',
                      image: Assets.messagesError,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: Container(
                  width: 270,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black87,
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
                      onTap: () {
                        AppRoutes.goToNews();
                      },
                      child: const Text(
                        'Notícias de Hollywood e Mais',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Lançamentos em cartaz',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Ver mais',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              CardMovieList(controller: controller),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Em breve',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Ver mais',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              CardMovieListShortly(controller: controller),
              const SizedBox(height: 20.0),
              Divider(color: Colors.grey.shade300),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
