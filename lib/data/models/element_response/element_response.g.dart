// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'element_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ElementResponse _$$_ElementResponseFromJson(Map<String, dynamic> json) =>
    _$_ElementResponse(
      status: json['status'] as String,
      element: Todo.fromJson(json['element'] as Map<String, dynamic>),
      revision: json['revision'] as int,
    );

Map<String, dynamic> _$$_ElementResponseToJson(_$_ElementResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'element': instance.element,
      'revision': instance.revision,
    };
