import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:radio/Model/flagmodel.dart';
import 'package:radio/Model/radiomodel.dart';

class Loaddata {
 static Future<RadioData> loadradiodata(String countryCode) async {
  String jsonstring = await rootBundle
      .loadString('assets/countrywisestation/stations_$countryCode.json');
  final jsonresponse = json.decode(jsonstring);
  return RadioData.fromJson(jsonresponse);
}

static Future<CountrySet> loadflagdata() async {
  String jsonstring = await rootBundle.loadString('assets/flag/flag.json');
  final jsonresponse = json.decode(jsonstring);
  return CountrySet.fromJson(jsonresponse);
}

}