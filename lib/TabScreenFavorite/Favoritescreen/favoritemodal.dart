import 'package:radio/Model/radiomodel.dart';
import 'package:radio/hive/boxs.dart';
import 'package:radio/hive/favoritehive.dart';

class FavoriteModal {
  static Future<FavoriteHive> addfavorite(
      RadioStationData radioStationData) async {
    final favoriteHive = FavoriteHive()
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
       final box=HiveBoxs.getfavoritehivebox();
   box.add(favoriteHive);
    return favoriteHive;
  }
    static deletefavorite(int index){
    final box=HiveBoxs.getfavoritehivebox(); 
    box.deleteAt(index);
  }
  //    static updaterecent(int index,RadioStationData radioStationData){
  //   final box=HiveBoxs.getfavoritehivebox(); 
  //   final favoriteHive = FavoriteHive()
  //     ..bitrate = radioStationData.bitrate!
  //     ..codec = radioStationData.codec
  //     ..countrycode = radioStationData.countrycode
  //     ..favicon = radioStationData.favicon
  //     ..hls = radioStationData.hls!
  //     ..language = radioStationData.language
  //     ..name = radioStationData.name
  //     ..state = radioStationData.state
  //     ..stationuuid = radioStationData.stationuuid
  //     ..tags = radioStationData.tags
  //     ..url = radioStationData.url
  //     ..votes = radioStationData.votes!;

  //   box.putAt(index,favoriteHive);
  // }
}
