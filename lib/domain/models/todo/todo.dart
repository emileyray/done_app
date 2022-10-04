import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@HiveType(typeId: 1)
enum Importance {
  @JsonValue("low")
  @HiveField(0)
  low,
  @JsonValue("basic")
  @HiveField(1)
  basic,
  @JsonValue("important")
  @HiveField(2)
  important,
}

@HiveType(typeId: 2)
enum Tag {
  @JsonValue("home")
  @HiveField(0)
  home,
  @JsonValue("work")
  @HiveField(1)
  work,
  @JsonValue("important")
  @HiveField(2)
  study,
}

@HiveType(typeId: 0)
@freezed
class Todo with _$Todo {
  const factory Todo({
    @JsonKey(name: 'id') @HiveField(0) required String id,
    @JsonKey(name: 'text') @HiveField(1) required String text,
    @JsonKey(name: 'importance') @HiveField(2) required Importance importance,
    @JsonKey(name: 'deadline') @HiveField(3) required int? deadline,
    @JsonKey(name: 'done') @HiveField(4) required bool done,
    @JsonKey(name: 'color') @HiveField(5) required String? color,
    @JsonKey(name: 'created_at') @HiveField(6) required int createdAt,
    @JsonKey(name: 'changed_at') @HiveField(7) required int changedAt,
    @JsonKey(name: 'last_updated_by') @HiveField(8) required String deviceId,
    @JsonKey(name: 'tag') @HiveField(9) required Tag? tag,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
