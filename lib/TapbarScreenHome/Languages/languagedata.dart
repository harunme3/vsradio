import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:radio/Model/langcountmodal.dart';


class LanguageData {

  static Future<LanginfoSet> loadJsonDataSet() async {
      String jsonstring = await rootBundle
          .loadString('assets/languagecount/langcount.json');
      final jsonresponse = json.decode(jsonstring);
      return LanginfoSet.fromJson(jsonresponse);
  
    }
}


