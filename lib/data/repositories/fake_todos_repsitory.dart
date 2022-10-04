// Fake class
import 'dart:async';
import 'dart:math';

import 'package:uuid/uuid.dart';
import 'package:yandex_to_do_app/data/repositories/todos_repository_interface.dart';
import 'package:yandex_to_do_app/domain/models/todo/todo.dart';

class FakeTodosRepsitoryImpl implements TodosRepository {
  late List<Todo> todos;

  FakeTodosRepsitoryImpl() {
    DateTime now = DateTime.now();
    Uuid uuid = const Uuid();
    Random random = Random();

    todos = List<Todo>.generate(30, (index) {
      return Todo(
        id: uuid.v1(),
        text: String.fromCharCodes(
            List.generate(15, (index) => random.nextInt(33) + 89)),
        importance: Importance.basic,
        deadline: null,
        done: false,
        color: null,
        createdAt: now.toUtc().millisecondsSinceEpoch,
        changedAt: now.toUtc().millisecondsSinceEpoch,
        deviceId: 'kek',
        tag: Tag.home,
      );
    });
  }

  @override
  FutureOr<void> addTodo(Todo todo) {
    todos.add(todo);
  }

  @override
  FutureOr<void> editTodo(Todo todo, {bool setDone = false}) {
    int idxToEdit = todos.indexWhere((element) => todo.id == element.id);
    todos[idxToEdit] = todo;
  }

  @override
  FutureOr<Todo?> getTodo(String uid) {
    int idxToReturn = todos.indexWhere((element) => uid == element.id);
    if (idxToReturn != -1) {
      return todos[idxToReturn];
    }
    return null;
  }

  @override
  FutureOr<List<Todo>> getTodosList() {
    return todos;
  }

  @override
  FutureOr<void> removeTodo(String id) {
    todos.removeWhere((element) => element.id == id);
  }

  @override
  FutureOr<void> updateList(List<Todo> todos) {
    this.todos = todos;
  }
}
