import 'package:auto_size_text/auto_size_text.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:radio/Drawer/drawer.dart';
import 'package:radio/appdashboard/explorescreen/explorescreen.dart';
import 'package:radio/appdashboard/favoritedashboard/favoritedashboard.dart';
import 'package:radio/appdashboard/homedashboard/homedashboard.dart';
import 'package:radio/appdashboard/profilescreen/profilescreen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        width: double.infinity,
        child: Text(
          'data',
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(
        child: MyDrawer(),
        backgroundColor: Color.fromARGB(255, 9, 71, 185),
      ),
      appBar: AppBar(
        elevation: 0,
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
            icon: Icon(Icons.sort_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: buildPages(),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.explore_outlined),
              title: Text('Explore'),
              activeColor: Colors.purpleAccent),
          BottomNavyBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              title: Text('Favorite'),
              activeColor: Colors.pink),
          BottomNavyBarItem(
              icon: Icon(Icons.face_outlined),
              title: Text('Profile'),
              activeColor: Colors.blue),
        ],
      ),
    );
  }

  Widget buildPages() {
    switch (_selectedIndex) {
      case 1:
        return ExploreScreen();
      case 2:
        return FavoriteDashBoard();
      case 3:
        return ProfileScreen();
      case 0:
      default:
        return HomeDashBoard();
    }
  }
}
