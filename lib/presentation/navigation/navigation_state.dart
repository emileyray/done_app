import 'package:flutter/foundation.dart';
import 'package:yandex_to_do_app/domain/domain.dart';

class NavigationState with ChangeNotifier {
  bool _isTodosPage;
  String? _todoId;
  Todo? _todo;
  NavigationState(this._isTodosPage, this._todoId, this._todo);

  bool get isTodosPage => _isTodosPage;
  String? get todoId => _todoId;
  Todo? get todo => _todo;

  set isTodosPage(bool value) {
    _isTodosPage = value;
    notifyListeners();
  }

  set todoId(String? id) {
    _todoId = id;
    notifyListeners();
  }

  set todo(Todo? nextTodo) {
    _todo = nextTodo;
    notifyListeners();
  }

  @override
  String toString() => "Is todos page: $_isTodosPage, todo id: $_todoId";
}
