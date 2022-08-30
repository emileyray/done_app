part of 'todos_bloc.dart';

@freezed
class TodosState with _$TodosState {
  const factory TodosState.initial() = _Initial;

  const factory TodosState.dataFetched({
    required List<Todo> todos,
    @Default(false) bool showDone,
  }) = _DataFetched;

  const factory TodosState.added({
    required List<Todo> todos,
    required Todo addedItem,
    required ActionTool actionTool,
    @Default(false) bool showDone,
  }) = _Added;

  const factory TodosState.removed({
    required List<Todo> todos,
    required Todo removedItem,
    required ActionTool actionTool,
    @Default(false) bool showDone,
  }) = _Removed;

  const factory TodosState.edited({
    required List<Todo> todos,
    required Todo editedItem,
    required ActionTool actionTool,
    @Default(false) bool showDone,
  }) = _Edited;
}
