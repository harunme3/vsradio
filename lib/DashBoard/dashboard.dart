import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:radio/Drawer/drawer.dart';
import 'package:radio/Screen/explorescreen/explorescreen.dart';
import 'package:radio/Screen/favoritedashboard/favoritedashboard.dart';
import 'package:radio/Screen/homedashboard/homedashboard.dart';
import 'package:radio/Screen/profilescreen/profilescreen.dart';

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
      appBar: AppBar(),
      body: buildPages(),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Users'),
              activeColor: Colors.purpleAccent),
          BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages'),
              activeColor: Colors.pink),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
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
