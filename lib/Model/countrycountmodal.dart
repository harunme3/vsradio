class CountryinfoSet {
  CountryinfoSet({required this.countryDataSet});

  factory CountryinfoSet.fromJson(Map<String, dynamic> data) {
    var list = data['countrydatainfo'] as List;
    List<CountryDataSet> countryDataSetlist =
        list.map((e) => CountryDataSet.fromJson(e)).toList();
    return CountryinfoSet(countryDataSet: countryDataSetlist);
  }

  final List<CountryDataSet> countryDataSet;
}

class CountryDataSet {
  CountryDataSet({
    required this.count,
    required this.filename,
    required this.countryname,
  });

  factory CountryDataSet.fromJson(Map<String, dynamic> data) {
    return CountryDataSet(
      countryname: data['countryname'],
      count: data['count'],
      filename: data['filename'],
    );
  }

  final int count;
  final String filename;
  final String countryname;
}
