import 'package:hive/hive.dart';
import 'package:radio/hive/favoritehive.dart';
import 'package:radio/hive/recenthive.dart';

class HiveBoxs {
  static Box<RecentHive> getrecenthivebox(){
    return Hive.box('recent');
  }
    static Box<FavoriteHive> getfavoritehivebox(){
    return Hive.box('favorite');
  }
    static Box getthemehivebox(){
    return Hive.box('theme');
  }
    static Box<String> getcountryhivebox(){
    return Hive.box('country');
  }
    static Box<String> getlanguagehivebox(){
    return Hive.box('language');
  }
}