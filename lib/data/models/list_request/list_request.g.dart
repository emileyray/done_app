// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListRequest _$$_ListRequestFromJson(Map<String, dynamic> json) =>
    _$_ListRequest(
      status: json['status'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => Todo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListRequestToJson(_$_ListRequest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
    };
