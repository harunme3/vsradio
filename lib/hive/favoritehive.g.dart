// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favoritehive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteHiveAdapter extends TypeAdapter<FavoriteHive> {
  @override
  final int typeId = 1;

  @override
  FavoriteHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteHive()
      ..bitrate = fields[0] as int
      ..codec = fields[1] as String
      ..countrycode = fields[2] as String
      ..favicon = fields[3] as String
      ..hls = fields[4] as int
      ..language = fields[5] as String
      ..name = fields[6] as String
      ..state = fields[7] as String
      ..stationuuid = fields[8] as String
      ..tags = fields[9] as String
      ..url = fields[10] as String
      ..votes = fields[11] as int;
  }

  @override
  void write(BinaryWriter writer, FavoriteHive obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.bitrate)
      ..writeByte(1)
      ..write(obj.codec)
      ..writeByte(2)
      ..write(obj.countrycode)
      ..writeByte(3)
      ..write(obj.favicon)
      ..writeByte(4)
      ..write(obj.hls)
      ..writeByte(5)
      ..write(obj.language)
      ..writeByte(6)
      ..write(obj.name)
      ..writeByte(7)
      ..write(obj.state)
      ..writeByte(8)
      ..write(obj.stationuuid)
      ..writeByte(9)
      ..write(obj.tags)
      ..writeByte(10)
      ..write(obj.url)
      ..writeByte(11)
      ..write(obj.votes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
