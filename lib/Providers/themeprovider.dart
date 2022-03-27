import 'package:flutter/material.dart';
import 'package:radio/hive/boxs.dart';

class ThemeProvider with ChangeNotifier {
  ThemeProvider(this.selectedtheme);

  String selectedtheme;

  String get getselectedtheme => selectedtheme;

  changetheme(String theme){
   final box= HiveBoxs.getthemehivebox();
   box.put('theme',theme);
   selectedtheme=theme;
    notifyListeners();
  }

}
