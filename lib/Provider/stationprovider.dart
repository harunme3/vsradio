import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:radio/Model/radiomodel.dart';

class StationProvider with ChangeNotifier {
  StationProvider(this.selectedcountry);

  String selectedcountry;

  String get getselectedcountry => selectedcountry;

  Future<RadioData> loadJsonDataSet(String countryCode) async {
    String jsonstring = await rootBundle
        .loadString('assets/countrywisestation/stations_$countryCode.json');
    final jsonresponse = json.decode(jsonstring);
    //notifyListeners();
    return RadioData.fromJson(jsonresponse);
  }
}
