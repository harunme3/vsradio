import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:radio/TabScreenFavorite/Favoritescreen/favoritescreen.dart';
import 'package:radio/TabScreenFavorite/Recentscreen/recentscreen.dart';

class FavoriteDashBoard extends StatefulWidget {
  const FavoriteDashBoard({Key? key}) : super(key: key);

  @override
  State<FavoriteDashBoard> createState() => _FavoriteDashBoardState();
}

class _FavoriteDashBoardState extends State<FavoriteDashBoard>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          physics: BouncingScrollPhysics(),
          tabs: const <Tab>[
            Tab(
              text: 'Favorite',
            ),
            Tab(
              text: 'Recent Played',
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: const [
        FavoriteScreen(),
        RecentScreen(),
      ]),
    );
  }
}
