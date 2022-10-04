part of 'todos_bloc.dart';

@freezed
class TodosEvent with _$TodosEvent {
  const factory TodosEvent.fetch() = _Fetch;

  const factory TodosEvent.edit({
    required Todo item,
    required ActionTool actionTool,
    String? text,
    Importance? importance,
    DateTime? deadline,
  }) = _Edit;

  const factory TodosEvent.remove({
    required Todo item,
    required ActionTool actionTool,
  }) = _Remove;

  const factory TodosEvent.add({
    required ActionTool actionTool,
    required String text,
    required Importance importance,
    String? color,
    Tag? tag,
    DateTime? deadline,
  }) = _Add;

  const factory TodosEvent.hideDone() = _HideDone;

  const factory TodosEvent.showDone() = _ShowDone;
}
