// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'element_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ElementRequest _$$_ElementRequestFromJson(Map<String, dynamic> json) =>
    _$_ElementRequest(
      status: json['status'] as String,
      element: Todo.fromJson(json['element'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ElementRequestToJson(_$_ElementRequest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'element': instance.element,
    };
