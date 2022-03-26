class CountrySet {
  CountrySet({required this.flagDataSet});

  factory CountrySet.fromJson(Map<String, dynamic> data) {
    var list = data['countryinfo'] as List;
    List<FlagDataSet> flagDataSetlist =
        list.map((e) => FlagDataSet.fromJson(e)).toList();
    return CountrySet(flagDataSet: flagDataSetlist);
  }

  final List<FlagDataSet> flagDataSet;
}

class FlagDataSet {
  FlagDataSet(
      {required this.name,
      required this.code,
       required this.filename,
     });

  factory FlagDataSet.fromJson(Map<String, dynamic> data) {
   
    return FlagDataSet(
        name: data['name'],
        code: data['code'],
        filename: data['filename'],
       );
  }

  final String code;
  final String name;
  final String filename;
 
}

