class LanginfoSet {
  LanginfoSet({required this.langDataSet});

  factory LanginfoSet.fromJson(Map<String, dynamic> data) {
    var list = data['langinfo'] as List;
    List<LangDataSet> langDataSetlist =
        list.map((e) => LangDataSet.fromJson(e)).toList();
    return LanginfoSet(langDataSet: langDataSetlist);
  }

  final List<LangDataSet> langDataSet;
}

class LangDataSet {
  LangDataSet(
      {required this.languagename,
      required this.count,
       required this.filename,
     });

  factory LangDataSet.fromJson(Map<String, dynamic> data) {
   
    return LangDataSet(
        languagename: data['languagename'],
        count: data['count'],
        filename: data['filename'],
       );
  }

  final int count;
  final String languagename;
  final String filename;
 
}

