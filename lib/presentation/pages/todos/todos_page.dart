import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:yandex_to_do_app/application/application.dart';
import 'package:yandex_to_do_app/flavor_config.dart';
import 'package:yandex_to_do_app/presentation/presentation.dart';
import 'package:yandex_to_do_app/domain/domain.dart';
import 'todos_item/todos_item.dart';

part 'app_bar.dart';
part 'todos_list.dart';
part 'input_item.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<TodosBloc>().add(const TodosEvent.fetch());
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            (Router.of(context).routerDelegate as TodosRouterDelegate)
                .goToAddPage();
          },
        ),
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          SafeArea(
            child: BlocBuilder<TodosBloc, TodosState>(
              builder: (context, state) {
                return CustomScrollView(
                  key: const Key('custom_scroll_view'),
                  controller: scrollController,
                  slivers: [
                    const _TodosAppBar(),
                    state.maybeWhen(
                      dataFetched: todoList,
                      removed: todoListWithActionOnItem,
                      edited: todoListWithActionOnItem,
                      added: todoListWithActionOnItem,
                      orElse: () => const SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          if (FlavorConfig.of(context).flavor == 'dev')
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 40),
              child: Text(
                'DEV',
                style: TextStyle(
                  color: getIt.get<ThemeBloc>().currentTheme is LightTheme
                      ? Colors.black.withOpacity(0.5)
                      : Colors.white.withOpacity(0.5),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget todoList(List<Todo> todos, bool showDone) {
    return TodosList(
      scrollController: scrollController,
      elements: todos,
      showDone: showDone,
    );
  }

  Widget todoListWithActionOnItem(
      List<Todo> todos, Todo item, ActionTool actionTool, bool showDone) {
    return TodosList(
      scrollController: scrollController,
      elements: todos,
      showDone: showDone,
    );
  }
}
