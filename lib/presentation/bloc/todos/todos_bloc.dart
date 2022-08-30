import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'package:yandex_to_do_app/application/application.dart';
import 'package:yandex_to_do_app/data/data.dart';
import 'package:yandex_to_do_app/domain/domain.dart';

part 'todos_bloc.freezed.dart';
part 'todos_event.dart';
part 'todos_state.dart';

enum ActionTool {
  swipe,
  checkbox,
  settingsPage,
  todosPage,
}

enum ActionType {
  removed,
  added,
  edited,
}

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final TodosRepository _todosRepository;

  TodosBloc(this._todosRepository) : super(const _Initial()) {
    on<_Fetch>(_fetch);
    on<_Remove>(_remove);
    on<_Add>(_add);
    on<_Edit>(_edit);
    on<_HideDone>(_hideDone);
    on<_ShowDone>(_showDone);
  }

  late List<Todo> _currentTodos;
  bool _showFinishedTodos = false;
  List<Todo> get _unfinishedTodos =>
      _currentTodos.where((e) => !e.done).toList();
  List<Todo> get _showTodos =>
      _showFinishedTodos ? _currentTodos : _unfinishedTodos;

  void _fetch(
    _Fetch event,
    Emitter emit,
  ) async {
    var list = await _todosRepository.getTodosList();
    _currentTodos = list.toList();
    emit(TodosState.dataFetched(
      todos: _showTodos,
      showDone: _showFinishedTodos,
    ));
  }

  void _edit(
    _Edit event,
    Emitter emit,
  ) async {
    assert(_editCondition(event.actionTool));

    Todo itemToEdit = event.item.copyWith(
      changedAt: DateTime.now().toUtc().millisecondsSinceEpoch,
      deviceId: await getDeviceId() ?? '',
    );

    bool setDone = false;
    if (event.actionTool == ActionTool.swipe) {
      setDone = true;
      itemToEdit = itemToEdit.copyWith(
        done: true,
      );
    } else if (event.actionTool == ActionTool.checkbox) {
      setDone = !itemToEdit.done;
      itemToEdit = itemToEdit.copyWith(
        done: !itemToEdit.done,
      );
    } else if (event.actionTool == ActionTool.settingsPage) {
      itemToEdit = itemToEdit.copyWith(
        text: event.text ?? itemToEdit.text,
        importance: event.importance ?? itemToEdit.importance,
        deadline: event.deadline != null
            ? event.deadline!.toUtc().millisecondsSinceEpoch
            : null,
      );
    }

    int idxToEdit = _currentTodos.indexWhere((e) => e.id == itemToEdit.id);
    _currentTodos[idxToEdit] = itemToEdit;

    emit(TodosState.edited(
      todos: _showTodos.toList(),
      editedItem: itemToEdit,
      actionTool: event.actionTool,
      showDone: _showFinishedTodos,
    ));

    await _todosRepository.editTodo(itemToEdit, setDone: setDone);
  }

  void _remove(
    _Remove event,
    Emitter emit,
  ) async {
    assert(_removeCondition(event.actionTool));

    _currentTodos.removeWhere((e) => e.id == event.item.id);
    emit(TodosState.removed(
      todos: _showTodos.toList(),
      removedItem: event.item,
      actionTool: event.actionTool,
      showDone: _showFinishedTodos,
    ));

    await _todosRepository.removeTodo(event.item.id);
  }

  void _add(
    _Add event,
    Emitter emit,
  ) async {
    assert(_addCondition(event.actionTool));

    var uuid = const Uuid();
    DateTime now = DateTime.now();

    Todo itemToAdd = Todo(
      id: uuid.v1(),
      text: event.text,
      importance: event.importance,
      deadline: event.deadline != null
          ? event.deadline!.toUtc().millisecondsSinceEpoch
          : null,
      done: false,
      color: null,
      createdAt: now.toUtc().millisecondsSinceEpoch,
      changedAt: now.toUtc().millisecondsSinceEpoch,
      deviceId: await getDeviceId() ?? '',
    );

    _currentTodos.add(itemToAdd);
    emit(TodosState.added(
      todos: _showTodos.toList(),
      addedItem: itemToAdd,
      actionTool: event.actionTool,
      showDone: _showFinishedTodos,
    ));

    await _todosRepository.addTodo(itemToAdd);
  }

  void _hideDone(event, emit) {
    emit(const _Initial());
    _showFinishedTodos = false;
    emit(TodosState.dataFetched(
      todos: _unfinishedTodos,
      showDone: _showFinishedTodos,
    ));
  }

  void _showDone(event, emit) {
    emit(const _Initial());
    _showFinishedTodos = true;
    emit(TodosState.dataFetched(
      todos: _currentTodos,
      showDone: true,
    ));
  }

  int get numOfDone => (_currentTodos.where((e) => e.done)).length;

  static bool _addCondition(ActionTool actionTool) {
    return actionTool == ActionTool.settingsPage ||
        actionTool == ActionTool.todosPage;
  }

  static bool _editCondition(ActionTool actionTool) {
    return actionTool == ActionTool.swipe ||
        actionTool == ActionTool.checkbox ||
        actionTool == ActionTool.settingsPage;
  }

  static bool _removeCondition(ActionTool actionTool) {
    return actionTool == ActionTool.swipe ||
        actionTool == ActionTool.settingsPage;
  }
}
