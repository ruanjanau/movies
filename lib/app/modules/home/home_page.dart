import 'package:flutter/material.dart';

import 'home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[700],
        body: SafeArea(
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
                    color: Colors.white,
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
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                      ],
                    ),
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
                const TabBar(
                  physics: NeverScrollableScrollPhysics(),
                  labelColor: Colors.white,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(text: 'Todos'),
                    Tab(text: 'Ação'),
                    Tab(text: 'Terror'),
                    Tab(text: 'Animes'),
                    Tab(text: 'Comédia'),
                  ],
                ),
                const Expanded(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Center(
                          child: Text('Todos',
                              style: TextStyle(color: Colors.white))),
                      Center(
                          child: Text('Ação',
                              style: TextStyle(color: Colors.white))),
                      Center(
                        child: MovieTerrorTile(),
                      ),
                      Center(
                          child: Text('Animes',
                              style: TextStyle(color: Colors.white))),
                      Center(
                          child: Text('Comédia',
                              style: TextStyle(color: Colors.white))),
                    ],
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
