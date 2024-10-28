import 'package:flutter/material.dart';
import 'package:movies/app/core/life_cycle/life_cycle.dart';
import 'package:movies/app/modules/home/widgets/genres_tile.dart';

import '../../core/utils/utils.dart';
import 'controllers/home_controller.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends PageLifeCycleState<HomeController, HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'O que você quer assistir?',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Digite o nome do filme...',
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GenresTile(
                        genre: 'Ação',
                        image: Assets.messagesError,
                      ),
                      SizedBox(width: 10.0),
                      GenresTile(
                        genre: 'Ação',
                        image: Assets.messagesError,
                      ),
                      SizedBox(width: 10.0),
                      GenresTile(
                        genre: 'Ação',
                        image: Assets.messagesError,
                      ),
                      SizedBox(width: 10.0),
                      GenresTile(
                        genre: 'Ação',
                        image: Assets.messagesError,
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Filmes em alta',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const CardMovieTile();
                    },
                  ),
                ),
                const SizedBox(height: 20.0),
                const Row(
                  children: [
                    Text(
                      'Todos os filmes',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 26,
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const CardMovieTile();
                    },
                  ),
                ),
                const SizedBox(height: 10.0),
                const Row(
                  children: [
                    Text(
                      'Terror',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 26,
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const CardMovieTile();
                    },
                  ),
                ),
                const SizedBox(height: 10.0),
                const Row(
                  children: [
                    Text(
                      'Comédia',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 26,
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const CardMovieTile();
                    },
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
