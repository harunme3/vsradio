import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:radio/Model/countrycountmodal.dart';

class CountryData {
     static Future<CountryinfoSet> loadJsonDataSet() async {

      String jsonstring = await rootBundle
          .loadString('assets/countriescount/countrycount.json');
      final jsonresponse = json.decode(jsonstring);
      return CountryinfoSet.fromJson(jsonresponse);
  
    }
}