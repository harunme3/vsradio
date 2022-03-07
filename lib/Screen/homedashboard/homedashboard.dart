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
        leading: Icon(Icons.menu_outlined),
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu_outlined),
            onPressed: () {},
          ),
        ],
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
      body: TabBarView(children: const [
        RecommendScreen(),
        LanguageScreen(),
        CountriesScreen(),
        TopStationScreen()
      ]),
    );
  }
}
