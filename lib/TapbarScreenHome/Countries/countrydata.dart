class CountryData {
  static Future<Map<String, int>> gettotalstationcountrywise()async{
     final Map<String, int> list={
       'in':250,
       'us':4707,

     };
     return list;
  }
}