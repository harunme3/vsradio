import 'package:logger/logger.dart';

var l = Logger();

class RadioData {
  RadioData({required this.radioDataSet});

  factory RadioData.fromJson(List list) {
    List<RadioStationData> radioDataSetlist =
        list.map((e) => RadioStationData.fromJson(e)).toList();
    return RadioData(radioDataSet: radioDataSetlist);
  }

  final List<RadioStationData> radioDataSet;
}

class RadioStationData {
  RadioStationData(
      {required this.stationuuid,
      required this.name,
      required this.url,
      required this.favicon,
      required this.tags,
      required this.countrycode,
      required this.state,
      required this.language,
      this.votes,
      required this.codec,
      this.bitrate,
      this.hls});

  factory RadioStationData.fromJson(Map<String, dynamic> data) {
    return RadioStationData(
      stationuuid: data['stationuuid'],
      name: data['name'],
      url: data['url'],
      favicon: data['favicon'],
      tags: data['tags'],
      countrycode: data['countrycode'],
      state: data['state'],
      language: data['language'],
      votes: data['votes'],
      codec: data['codec'],
      bitrate: data[' bitrate'],
      hls: data['hls'],
    );
  }

  final String stationuuid;
  final String name;
  final String url;
  final String favicon;
  final String tags;
  final String countrycode;
  final String state;
  final String language;
  final int? votes;
  final String codec;
  final int? bitrate;
  final int? hls;
}
