// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListResponse _$$_ListResponseFromJson(Map<String, dynamic> json) =>
    _$_ListResponse(
      status: json['status'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => Todo.fromJson(e as Map<String, dynamic>))
          .toList(),
      revision: json['revision'] as int,
    );

Map<String, dynamic> _$$_ListResponseToJson(_$_ListResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'revision': instance.revision,
    };
