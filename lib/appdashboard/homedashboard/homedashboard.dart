import 'package:flutter/material.dart';
import 'package:radio/TapbarScreenHome/Countries/countriesscreen.dart';
import 'package:radio/TapbarScreenHome/Languages/languagesscreen.dart';
import 'package:radio/TapbarScreenHome/Recommend/recommendscreen.dart';
import 'package:radio/TapbarScreenHome/TopStation/topstation.dart';

class HomeDashBoard extends StatefulWidget {
  const HomeDashBoard({Key? key}) : super(key: key);

  @override
  State<HomeDashBoard> createState() => _HomeDashBoardState();
}

class _HomeDashBoardState extends State<HomeDashBoard>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const <Tab>[
            Tab(
              text: 'Recommend',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: 'Language',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: 'Countries',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: 'Top station',
              icon: Icon(Icons.home),
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: const [
        RecommendScreen(),
        LanguageScreen(),
        CountriesScreen(),
        TopStationScreen()
      ]),
    );
  }
}
