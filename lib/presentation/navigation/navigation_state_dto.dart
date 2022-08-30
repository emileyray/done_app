import 'package:yandex_to_do_app/domain/domain.dart';

class NavigationStateDTO {
  bool todosPage;
  String? todoId;
  Todo? todo;
  NavigationStateDTO(this.todosPage, this.todoId);
  NavigationStateDTO.todos()
      : todosPage = true,
        todoId = null,
        todo = null;
  NavigationStateDTO.add()
      : todosPage = false,
        todoId = null,
        todo = null;
  NavigationStateDTO.edit({Todo? nextTodo, String? id})
      : todosPage = false,
        todoId = id,
        todo = nextTodo;
}
