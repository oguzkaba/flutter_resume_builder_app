// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CacheModelAdapter extends TypeAdapter<CacheModel> {
  @override
  final int typeId = 1;

  @override
  CacheModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CacheModel(
      isDark: fields[2] as bool?,
      isLogin: fields[0] as bool?,
      favorites: (fields[1] as List?)?.cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, CacheModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.isLogin)
      ..writeByte(1)
      ..write(obj.favorites)
      ..writeByte(2)
      ..write(obj.isDark);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CacheModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
