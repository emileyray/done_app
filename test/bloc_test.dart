import 'package:hive_flutter/hive_flutter.dart';
import 'package:yandex_to_do_app/data/data.dart';
import 'package:yandex_to_do_app/domain/domain.dart';
import 'package:yandex_to_do_app/presentation/presentation.dart';
import 'package:flutter_test/flutter_test.dart';

main() async {
  late TodosBloc todosBloc;
  await Hive.initFlutter();
  Hive.registerAdapter(ImportanceAdapter());
  Hive.registerAdapter(TodoAdapter());
  await Hive.openBox<Todo>('todos');
  await Hive.openBox<int>('lastRevision');

  setUp(() {
    todosBloc = TodosBloc(FakeTodosRepsitoryImpl());
  });

  Future<List<Todo>?> fetchTodos(TodosBloc bloc) async {
    List<Todo>? todos;

    bloc.add(const TodosEvent.fetch());
    await Future.doWhile(
      () async {
        await Future.delayed(const Duration(seconds: 1));
        return !bloc.state.maybeMap(
          dataFetched: (_) {
            todos = _.todos;
            return true;
          },
          orElse: () => false,
        );
      },
    );

    return todos;
  }

  group('Bloc', () {
    test('tasks are fetched', () async {
      List<Todo>? initialTodos;
      initialTodos = await fetchTodos(todosBloc);
      expect(initialTodos != null, true);
    });

    test('task is added', () async {
      List<Todo>? initialTodos;
      initialTodos = (await fetchTodos(todosBloc))!.toList();

      todosBloc.add(const TodosEvent.add(
        actionTool: ActionTool.todosPage,
        text: 'kek',
        importance: Importance.low,
      ));

      late List<Todo> updatedTodos;
      await Future.doWhile(
        () async {
          await Future.delayed(const Duration(seconds: 1));
          return !todosBloc.state.maybeMap(
            added: (_) {
              updatedTodos = _.todos;
              return true;
            },
            orElse: () => false,
          );
        },
      );

      var difference =
          updatedTodos.toSet().difference(initialTodos.toSet()).toList();

      //после удаления разница между "после" и "до" должна равняться одному
      //добавленному таску
      expect(
          difference.length == 1 &&
              difference[0].text == 'kek' &&
              !difference[0].done,
          true);
    });

    test('task is done and not shown', () async {
      List<Todo>? initialTodos;
      initialTodos = await fetchTodos(todosBloc);

      Todo toEdit = initialTodos!.first;
      todosBloc.add(TodosEvent.edit(
        actionTool: ActionTool.swipe,
        item: toEdit,
      ));

      late List<Todo> updatedTodos;
      await Future.doWhile(
        () async {
          await Future.delayed(const Duration(seconds: 1));
          return !todosBloc.state.maybeMap(
            edited: (_) {
              updatedTodos = _.todos;
              return true;
            },
            orElse: () => false,
          );
        },
      );

      //в блоке изначально не показываются выполненные таски, значит после выполнения
      //таск должен исчезнуть
      expect(updatedTodos.indexWhere((e) => e.id == toEdit.id) == -1, true);
    });

    test('task is done and shown', () async {
      List<Todo>? initialTodos;
      initialTodos = await fetchTodos(todosBloc);

      todosBloc.add(const TodosEvent.showDone()); //показываем таски

      late List<Todo> updatedTodos;
      await Future.doWhile(
        () async {
          await Future.delayed(const Duration(seconds: 1));
          return !todosBloc.state.maybeMap(
            dataFetched: (_) {
              updatedTodos = _.todos;
              return true;
            },
            orElse: () => false,
          );
        },
      );

      var difference =
          updatedTodos.toSet().difference(initialTodos!.toSet()).toList();

      //тут мы показываем выполененные таски, значит разница между "до" и "после"
      //должна составлять только выполненные таски
      expect(
          difference.fold<bool>(
              true, (previousValue, element) => previousValue && element.done),
          true);
    });

    test('task is removed', () async {
      List<Todo>? initialTodos;
      initialTodos = (await fetchTodos(todosBloc))!.toList();

      Todo toRemove = initialTodos.first;
      todosBloc.add(TodosEvent.remove(
        actionTool: ActionTool.swipe,
        item: toRemove,
      ));

      late List<Todo> updatedTodos;
      await Future.doWhile(
        () async {
          await Future.delayed(const Duration(seconds: 1));
          return !todosBloc.state.maybeMap(
            removed: (_) {
              updatedTodos = _.todos;

              return true;
            },
            orElse: () => false,
          );
        },
      );

      var difference =
          initialTodos.toSet().difference(updatedTodos.toSet()).toList();

      //удаляю таск, а значит разница между "до" и "после" должна состовлять
      //одна тудушка, которую удалили
      expect(difference.length == 1 && difference[0].id == toRemove.id, true);
    });
  });
}
