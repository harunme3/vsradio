import 'package:hive/hive.dart';
part 'recenthive.g.dart';
@HiveType(typeId: 0)
class RecentHive { 
  @HiveField(0)
  late final int bitrate; 
  @HiveField(1)
  late final String codec;
  @HiveField(2)
  late final String countrycode;
  @HiveField(3)
  late final String favicon;
  @HiveField(4)
  late final int  hls;
  @HiveField(5)
  late final String  language;
  @HiveField(6)
  late final String name;
  @HiveField(7)
  late final String  state;
  @HiveField(8)
  late final String stationuuid;
  @HiveField(9)
  late final String  tags;
  @HiveField(10)
  late final String  url;
  @HiveField(11)
  late final int  votes;
 }