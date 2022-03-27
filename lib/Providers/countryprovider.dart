import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:radio/Model/radiomodel.dart';
import 'package:radio/hive/boxs.dart';

class CountryProvider with ChangeNotifier {
  CountryProvider(this.selectedcountry);

  String selectedcountry;

  String get getselectedcountry => selectedcountry;

  Future<RadioData> loadJsonDataSet(String countryCode) async {
    if (countryCode == 'in') {
      String jsonstring = await rootBundle
          .loadString('assets/countrywisestation/stations_$countryCode.json');
      final jsonresponse = json.decode(jsonstring);
      return RadioData.fromJson(jsonresponse);
    } else {print('====================================');

      String jsonstring = await rootBundle
          .loadString('assets/countrywisestation/stations_$countryCode.json');
      final jsonresponse = json.decode(jsonstring);
      return RadioData.fromJson(jsonresponse);
    }
  }

  changecountry(String countrycode) {
    final box = HiveBoxs.getcountryhivebox();
    box.put('countrycode', countrycode);
    selectedcountry = countrycode;
    notifyListeners();
  }
}
