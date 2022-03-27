import 'package:radio/Model/radiomodel.dart';
import 'package:radio/hive/boxs.dart';
import 'package:radio/hive/recenthive.dart';

class RecentModal {
  static Future addrecent(RadioStationData radioStationData) async {
    final recentHive = RecentHive()
      ..bitrate = radioStationData.bitrate!
      ..codec = radioStationData.codec
      ..countrycode = radioStationData.countrycode
      ..favicon = radioStationData.favicon
      ..hls = radioStationData.hls!
      ..language = radioStationData.language
      ..name = radioStationData.name
      ..state = radioStationData.state
      ..stationuuid = radioStationData.stationuuid
      ..tags = radioStationData.tags
      ..url = radioStationData.url
      ..votes = radioStationData.votes!;
   final box=HiveBoxs.getrecenthivebox();
   box.add(recentHive);
    return recentHive;
  }
  static deleterecent(int index){
    final box=HiveBoxs.getrecenthivebox(); 
    box.deleteAt(index);
  }
}
