import 'dart:async';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:yandex_to_do_app/application/application.dart';
import 'package:yandex_to_do_app/data/data.dart';
import 'package:yandex_to_do_app/domain/domain.dart';

const _lastRevisionStr = 'lastRevision';
const _valueStr = 'value';

class TodosRemoteRepository implements TodosRepository {
  static final _lastRevisionBox = Hive.box<int>(_lastRevisionStr);
  int get lastRevision => _lastRevisionBox.get(_valueStr) ?? 0;

  static void _updateRevisionAfterElementResponse(Response response) {
    var elementResponse = ElementResponse.fromJson(response.data);
    _lastRevisionBox.put(_valueStr, elementResponse.revision);
  }

  static void _updateRevisionAfterListResponse(Response response) {
    var elementResponse = ListResponse.fromJson(response.data);
    _lastRevisionBox.put(_valueStr, elementResponse.revision);
  }

  @override
  FutureOr<void> addTodo(Todo todo) async {
    var response = await getIt.get<TodosApi>().addTodo(
          elementRequest: ElementRequest(
            status: "ok",
            element: todo,
          ),
          lastRevision: lastRevision,
        );

    _updateRevisionAfterElementResponse(response);
  }

  @override
  FutureOr<void> editTodo(Todo todo, {bool setDone = false}) async {
    var response = await getIt.get<TodosApi>().editTodo(
          elementRequest: ElementRequest(
            status: "ok",
            element: todo,
          ),
          lastRevision: lastRevision,
        );

    _updateRevisionAfterElementResponse(response);
  }

  @override
  FutureOr<List<Todo>> getTodosList() async {
    var rawResponse = await getIt.get<TodosApi>().getList();
    var listResponse = ListResponse.fromJson(rawResponse.data);

    _updateRevisionAfterListResponse(rawResponse);

    return listResponse.list;
  }

  @override
  FutureOr<void> removeTodo(String id) async {
    var response = await getIt.get<TodosApi>().removeTodo(
          id: id,
          lastRevision: lastRevision,
        );

    _updateRevisionAfterElementResponse(response);
  }

  @override
  FutureOr<Todo?> getTodo(String id) async {
    var response = await getIt.get<TodosApi>().getTodo(
          id: id,
        );
    _updateRevisionAfterElementResponse(response);
    return Todo.fromJson(response.data);
  }

  @override
  FutureOr<void> updateList(List<Todo> todos) async {
    var response = await getIt.get<TodosApi>().updateList(
          listRequest: ListRequest(
            status: "ok",
            list: todos,
          ),
          lastRevision: lastRevision,
        );

    _updateRevisionAfterListResponse(response);
  }
}
