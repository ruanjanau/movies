import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/app/core/routes/app_routes.dart';

import '../../core/life_cycle/life_cycle.dart';
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
              Center(
                child: Image.asset(
                  Assets.logoApp,
                  width: 200,
                  height: 90,
                ),
              ),
              const SizedBox(height: 20.0),
              const Center(
                child: Text(
                  'Generos',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: 8.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      GenresTile(
                        genre: 'Ação',
                        image: Assets.messagesError,
                      ),
                      SizedBox(width: 16),
                      GenresTile(
                        genre: 'Animação',
                        image: Assets.messagesError,
                      ),
                      SizedBox(width: 16),
                      GenresTile(
                        genre: 'Comédia',
                        image: Assets.messagesError,
                      ),
                      SizedBox(width: 16),
                      GenresTile(
                        genre: 'Drama',
                        image: Assets.messagesError,
                      ),
                      SizedBox(width: 16),
                      GenresTile(
                        genre: 'Ficção',
                        image: Assets.messagesError,
                      ),
                      SizedBox(width: 16),
                      GenresTile(
                        genre: 'Terror',
                        image: Assets.messagesError,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              NewsComponent(onTap: () => AppRoutes.goToNews()),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Lançamentos em cartaz',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    SeeMoreComponent(),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              CardMovieList(controller: controller),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Em breve',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    SeeMoreComponent()
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              CardMovieListShortly(controller: controller),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
