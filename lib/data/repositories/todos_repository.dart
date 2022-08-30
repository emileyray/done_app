import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';

import 'package:yandex_to_do_app/data/data.dart';
import 'package:yandex_to_do_app/domain/domain.dart';

class TodosRepositoryImpl implements TodosRepository {
  final TodosLocalRepository localRepository = TodosLocalRepository();
  final TodosRemoteRepository remoteRepository = TodosRemoteRepository();

  List<Todo> get localTodos => localRepository.getTodosList();
  int get lastRevision => remoteRepository.lastRevision;

  void debugPrintOnError(e) {
    if (e is DioError) {
      debugPrint(e.message);
    }
  }

  @override
  Future<void> updateList(List<Todo> todos) async {
    try {
      localRepository.updateList(todos);
      await remoteRepository.updateList(todos);
    } catch (e) {
      debugPrintOnError(e);
    }
  }

  @override
  Future<void> addTodo(Todo todo) async {
    try {
      localRepository.addTodo(todo);
      await remoteRepository.addTodo(todo);
    } catch (e) {
      debugPrintOnError(e);
    }
    FirebaseAnalytics.instance.logEvent(name: 'add');
  }

  @override
  Future<void> editTodo(Todo todo, {bool setDone = false}) async {
    try {
      localRepository.editTodo(todo);
      await remoteRepository.editTodo(todo);
    } catch (e) {
      debugPrintOnError(e);
    }

    if (setDone) {
      FirebaseAnalytics.instance.logEvent(name: 'done');
    }
  }

  @override
  Future<List<Todo>> getTodosList() async {
    try {
      var oldLastRevision = lastRevision;
      var todos = await remoteRepository.getTodosList();
      if (lastRevision > oldLastRevision) {
        localRepository.updateList(todos);
      } else {
        remoteRepository.updateList(localRepository.getTodosList());
      }
    } catch (e) {
      debugPrintOnError(e);
    }

    return localRepository.getTodosList();
  }

  @override
  Future<void> removeTodo(String id) async {
    try {
      localRepository.removeTodo(id);
      await remoteRepository.removeTodo(id);
    } catch (e) {
      debugPrintOnError(e);
    }
    FirebaseAnalytics.instance.logEvent(name: 'remove');
  }

  @override
  Future<Todo?> getTodo(String id) async {
    try {
      var oldLastRevision = lastRevision;
      var remoteTodo = await remoteRepository.getTodo(id);
      var localTodo = localRepository.getTodo(id);

      if (remoteTodo != null) {
        if (lastRevision > oldLastRevision) {
          localRepository.editTodo(remoteTodo);
        } else {
          if (localTodo != null) {
            remoteRepository.editTodo(localTodo);
          }
        }
      }
    } catch (e) {
      debugPrintOnError(e);
    }

    return localRepository.getTodo(id);
  }
}
