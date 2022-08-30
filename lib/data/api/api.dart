import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/models.dart';

const _baseUrl = 'https://your_base_url.com/';
const _token = String.fromEnvironment('TOKEN');

@Singleton()
class TodosApi {
  static final Dio dio = Dio(
    BaseOptions(baseUrl: _baseUrl, headers: {
      'Authorization': 'Bearer $_token',
    }),
  );

  Future<Response> getList() async {
    return TodosApi.dio.get(
      '/list',
    );
  }

  Future<Response> updateList({
    required ListRequest listRequest,
    required int lastRevision,
  }) async {
    return TodosApi.dio.patch(
      '/list',
      data: jsonEncode(listRequest),
    );
  }

  Future<Response> addTodo({
    required ElementRequest elementRequest,
    required int lastRevision,
  }) async {
    return TodosApi.dio.post(
      '/list',
      data: jsonEncode(elementRequest),
    );
  }

  Future<Response> getTodo({
    required String id,
  }) async {
    return TodosApi.dio.get(
      '/list/$id',
    );
  }

  Future<Response> removeTodo({
    required String id,
    required int lastRevision,
  }) async {
    return TodosApi.dio.delete(
      '/list/$id',
    );
  }

  Future<Response> editTodo({
    required ElementRequest elementRequest,
    required int lastRevision,
  }) async {
    return TodosApi.dio.put(
      '/list/${elementRequest.element.id}',
      data: jsonEncode(elementRequest),
    );
  }
}
