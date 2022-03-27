import 'package:logger/logger.dart';
import 'package:radio/Model/flagmodel.dart';
import 'package:radio/Model/radiomodel.dart';
import 'package:radio/search/loaddata.dart';

class Searchdata {
 
 static Future<List<RadioStationData>> serchbytag(String tag) async {
    var l=Logger();
    l.w('called');
    List<RadioStationData> list = [];
    final CountrySet countrySet = await Loaddata.loadflagdata();
    List<String> countrycodelist = [];
    for (var i = 0; i < countrySet.flagDataSet.length; i++) {
      countrycodelist.add(countrySet.flagDataSet[i].code);
      l.w('message');
    }
    for (var countryCode in ['in']) {
      final RadioData radiodata = await Loaddata.loadradiodata(countryCode);

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
    l.e(list);
    return list;
  }

  static Future<List<RadioStationData>> serchbylanguage(String language) async {
    List<RadioStationData> list = [];
    final CountrySet countrySet = await Loaddata.loadflagdata();
    List<String> countrycodelist = [];
    for (var i = 0; i < countrySet.flagDataSet.length; i++) {
      countrycodelist.add(countrySet.flagDataSet[i].code);
    }

    for (var countryCode in countrycodelist) {
      final RadioData radiodata = await Loaddata.loadradiodata(countryCode);

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
    return list;
  }

 static Future<List<RadioStationData>> toplistenbyvotes(int top, String countryCode) async {
    List<RadioStationData> list = [];
    List<int> listvote = [];
    final RadioData radiodata = await Loaddata.loadradiodata('in');

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
     return list;
  }
 
}
