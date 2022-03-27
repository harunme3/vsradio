import 'package:flutter/material.dart';
import 'package:radio/hive/boxs.dart';

class LanguageProvider with ChangeNotifier {
  LanguageProvider(this.selectedlanguage);

  String selectedlanguage;

  String get getselectedlanguage => selectedlanguage;

  changelanguage(String languagecode){
   final box= HiveBoxs.getlanguagehivebox();
   box.put('languagecode',languagecode);
   selectedlanguage=languagecode;
    notifyListeners();
  }

}
