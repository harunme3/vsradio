import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:radio/Model/flagmodel.dart';
import 'package:radio/Model/radiomodel.dart';

Future<RadioData> loadradiodata(String countryCode) async {
  String jsonstring = await rootBundle
      .loadString('assets/countrywisestation/stations_$countryCode.json');
  final jsonresponse = json.decode(jsonstring);
  return RadioData.fromJson(jsonresponse);
}

Future<CountrySet> loadflagdata() async {
  String jsonstring = await rootBundle.loadString('assets/flag/flag.json');
  final jsonresponse = json.decode(jsonstring);
  return CountrySet.fromJson(jsonresponse);
}

class Searchdata {
  serchbytag(String tag) async {
    List<RadioStationData> list = [];
    final CountrySet countrySet = await loadflagdata();
    List<String> countrycodelist = [];
    for (var i = 0; i < countrySet.flagDataSet.length; i++) {
      countrycodelist.add(countrySet.flagDataSet[i].code);
    }
    for (var countryCode in countrycodelist) {
      final RadioData radiodata = await loadradiodata(countryCode);

      for (var i = 0; i < radiodata.radioDataSet.length; i++) {
        RegExp regexp = RegExp(
          '/$tag+/',
          caseSensitive: false,
        );
        if (regexp.hasMatch(radiodata.radioDataSet[i].tags)) {
          list.add(radiodata.radioDataSet[i]);
        }
      }
    }
  }

  serchbylanguage(String language) async {
    List<RadioStationData> list = [];
    final CountrySet countrySet = await loadflagdata();
    List<String> countrycodelist = [];
    for (var i = 0; i < countrySet.flagDataSet.length; i++) {
      countrycodelist.add(countrySet.flagDataSet[i].code);
    }

    for (var countryCode in countrycodelist) {
      final RadioData radiodata = await loadradiodata(countryCode);

      for (var i = 0; i < radiodata.radioDataSet.length; i++) {
        RegExp regexp = RegExp(
          '/$language+/',
          caseSensitive: false,
        );
        if (regexp.hasMatch(radiodata.radioDataSet[i].tags)) {
          list.add(radiodata.radioDataSet[i]);
        }
      }
    }
  }

  toplistenbyvotes(int top, String countryCode) async {
    List<RadioStationData> list = [];
    List<int> listvote = [];
    final RadioData radiodata = await loadradiodata('in');

    for (var i = 0; i < radiodata.radioDataSet.length; i++) {
      listvote.add(radiodata.radioDataSet[i].votes ?? 0);
    }
    listvote.sort();
    listvote.reversed.toList();
    if (top > radiodata.radioDataSet.length) {
      top = radiodata.radioDataSet.length;
    }
    listvote.sublist(0, top);
    int flag = 0;
    for (var i = 0; i < radiodata.radioDataSet.length; i++) {
      if (radiodata.radioDataSet[i].votes == listvote[flag]) {
        list.add(radiodata.radioDataSet[i]);
        flag++;
      }
      if (flag == top) {
        break;
      }
    }
  }
}
