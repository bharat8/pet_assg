// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DogHiveAdapter extends TypeAdapter<DogHive> {
  @override
  final int typeId = 0;

  @override
  DogHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DogHive(
      dogImage: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DogHive obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.dogImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DogHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
