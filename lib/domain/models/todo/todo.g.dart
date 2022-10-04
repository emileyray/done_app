// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoAdapter extends TypeAdapter<Todo> {
  @override
  final int typeId = 0;

  @override
  Todo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Todo(
      id: fields[0] as String,
      text: fields[1] as String,
      importance: fields[2] as Importance,
      deadline: fields[3] as int?,
      done: fields[4] as bool,
      color: fields[5] as String?,
      createdAt: fields[6] as int,
      changedAt: fields[7] as int,
      deviceId: fields[8] as String,
      tag: fields[9] as Tag?,
    );
  }

  @override
  void write(BinaryWriter writer, Todo obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.importance)
      ..writeByte(3)
      ..write(obj.deadline)
      ..writeByte(4)
      ..write(obj.done)
      ..writeByte(5)
      ..write(obj.color)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.changedAt)
      ..writeByte(8)
      ..write(obj.deviceId)
      ..writeByte(9)
      ..write(obj.tag);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImportanceAdapter extends TypeAdapter<Importance> {
  @override
  final int typeId = 1;

  @override
  Importance read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Importance.low;
      case 1:
        return Importance.basic;
      case 2:
        return Importance.important;
      default:
        return Importance.low;
    }
  }

  @override
  void write(BinaryWriter writer, Importance obj) {
    switch (obj) {
      case Importance.low:
        writer.writeByte(0);
        break;
      case Importance.basic:
        writer.writeByte(1);
        break;
      case Importance.important:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImportanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TagAdapter extends TypeAdapter<Tag> {
  @override
  final int typeId = 2;

  @override
  Tag read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Tag.home;
      case 1:
        return Tag.work;
      case 2:
        return Tag.study;
      default:
        return Tag.home;
    }
  }

  @override
  void write(BinaryWriter writer, Tag obj) {
    switch (obj) {
      case Tag.home:
        writer.writeByte(0);
        break;
      case Tag.work:
        writer.writeByte(1);
        break;
      case Tag.study:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TagAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      id: json['id'] as String,
      text: json['text'] as String,
      importance: $enumDecode(_$ImportanceEnumMap, json['importance']),
      deadline: json['deadline'] as int?,
      done: json['done'] as bool,
      color: json['color'] as String?,
      createdAt: json['created_at'] as int,
      changedAt: json['changed_at'] as int,
      deviceId: json['last_updated_by'] as String,
      tag: $enumDecodeNullable(_$TagEnumMap, json['tag']),
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'importance': _$ImportanceEnumMap[instance.importance]!,
      'deadline': instance.deadline,
      'done': instance.done,
      'color': instance.color,
      'created_at': instance.createdAt,
      'changed_at': instance.changedAt,
      'last_updated_by': instance.deviceId,
      'tag': _$TagEnumMap[instance.tag],
    };

const _$ImportanceEnumMap = {
  Importance.low: 'low',
  Importance.basic: 'basic',
  Importance.important: 'important',
};

const _$TagEnumMap = {
  Tag.home: 'home',
  Tag.work: 'work',
  Tag.study: 'important',
};
