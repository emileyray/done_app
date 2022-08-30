import 'dart:async';
import 'package:yandex_to_do_app/domain/domain.dart';

abstract class TodosRepository {
  FutureOr<List<Todo>> getTodosList();
  FutureOr<void> addTodo(Todo todo);
  FutureOr<void> editTodo(Todo todo, {bool setDone = false});
  FutureOr<void> removeTodo(String id);
  FutureOr<void> updateList(List<Todo> todos);
  FutureOr<Todo?> getTodo(String uid);
}
