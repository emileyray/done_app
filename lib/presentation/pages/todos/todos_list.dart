part of 'todos_page.dart';

class TodosList extends StatefulWidget {
  final ScrollController scrollController;
  final List<Todo> elements;
  final bool showDone;
  const TodosList({
    required this.scrollController,
    required this.elements,
    required this.showDone,
    Key? key,
  }) : super(key: key);

  @override
  State<TodosList> createState() => _TodosListState();
}

class _TodosListState extends State<TodosList> with TickerProviderStateMixin {
  late List<Todo> currentlyShownList;
  final GlobalKey<SliverAnimatedListState> listKey = GlobalKey();
  Tween<double> _inputItemTween = Tween<double>(begin: 1, end: 1);
  late final AnimationController _inputItemController = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );

  @override
  void initState() {
    super.initState();
    currentlyShownList = widget.elements.toList();
  }

  @override
  void dispose() {
    _inputItemController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TodosBloc, TodosState>(
      listener: todosStateListener,
      child: SliverPadding(
        padding: const EdgeInsets.only(
          bottom: 28,
          left: 8,
          right: 8,
          top: 8,
        ),
        sliver: SliverAnimatedList(
          key: listKey,
          initialItemCount: currentlyShownList.length + 1,
          itemBuilder: (context, index, animation) {
            if (index == currentlyShownList.length) {
              return _AnimatedItem(
                animation: _inputItemTween.animate(_inputItemController),
                child: const _InputItem(),
              );
            }

            return _AnimatedItem(
              animate: !(_inputItemController.isAnimating &&
                  index == currentlyShownList.length - 1),
              animation: animation,
              child: TodosItem(
                element: currentlyShownList[index],
                showDone: widget.showDone,
              ),
            );
          },
        ),
      ),
    );
  }

  void todosStateListener(BuildContext context, TodosState state) {
    state.whenOrNull(
      dataFetched: (todos, showDone) => updateAnimatedList(todos),
      removed: (todos, removedElement, actionTool, showDone) {
        if (actionTool == ActionTool.swipe) {
          removeItem(removedElement);
        }
        updateAnimatedList(todos);
      },
      edited: (todos, editedElement, actionTool, showDone) {
        if (actionTool == ActionTool.swipe) {
          if (showDone) {
            handleSingleItemAction(todos, editedElement, showDone);
          } else {
            removeItem(editedElement);
            updateAnimatedList(todos);
          }
          return;
        }

        handleSingleItemAction(todos, editedElement, showDone);
      },
      added: (todos, addedItem, actionTool, showDone) {
        if (actionTool == ActionTool.todosPage) {
          _inputItemTween = Tween<double>(begin: 0, end: 1);
          _inputItemController.reset();
          _inputItemController.forward();
        }
        updateAnimatedList(todos);
      },
    );
  }

  void handleSingleItemAction(
    List<Todo> todos,
    Todo completedElement,
    bool showDone,
  ) {
    if (showDone) {
      currentlyShownList[currentlyShownList.indexWhere(
        (e) => e.id == completedElement.id,
      )] = completedElement;
    }
    updateAnimatedList(todos);
  }

  void removeItem(Todo task) {
    int idxToRemove = currentlyShownList.indexWhere((e) => e.id == task.id);
    currentlyShownList.removeAt(idxToRemove);

    listKey.currentState!.removeItem(
      idxToRemove,
      (context, animation) {
        return Container();
      },
    );
  }

  void updateAnimatedList(List<Todo> tasks) {
    handleHiding(tasks);
    handleShowing(tasks);
    handleUpdate(tasks);
  }

  void handleHiding(List<Todo> tasks) {
    var currentlyShownListCopy = currentlyShownList.toList();

    for (var task in currentlyShownListCopy) {
      if (!tasks.any((e) => e.id == task.id)) {
        int idxToRemove = currentlyShownList.indexWhere((e) => e.id == task.id);
        if (idxToRemove != -1) {
          currentlyShownList.removeAt(idxToRemove);

          listKey.currentState!.removeItem(
            idxToRemove,
            (context, animation) {
              return _AnimatedItem(
                animation: animation,
                child: TodosItem(
                  element: task,
                  showDone: widget.showDone,
                ),
              );
            },
          );
        }
      }
    }
  }

  void handleShowing(List<Todo> tasks) {
    for (var task in tasks) {
      if (!currentlyShownList.any((e) => e.id == task.id)) {
        int idxToAdd = tasks.indexWhere((e) => e.id == task.id);

        currentlyShownList.insert(idxToAdd, task);
        listKey.currentState!.insertItem(idxToAdd);
      }
    }
  }

  void handleUpdate(List<Todo> tasks) {
    var currentlyShownListCopy = currentlyShownList.toList();

    for (var task in tasks) {
      if (currentlyShownListCopy.any((e) => e.id == task.id && e != task)) {
        int idxToReplace =
            currentlyShownList.indexWhere((e) => e.id == task.id);
        if (idxToReplace != -1) {
          currentlyShownList[idxToReplace] = task;
        }
      }
    }
  }
}

class _AnimatedItem extends StatelessWidget {
  final Widget child;
  final bool first;
  final bool last;
  final Animation<double> animation;
  final bool animate;
  const _AnimatedItem({
    required this.child,
    // ignore: unused_element
    this.first = false,
    // ignore: unused_element
    this.last = false,
    required this.animation,
    this.animate = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget itemContent = FadeTransition(
      opacity: animation,
      child: SizeTransition(
        sizeFactor: animation,
        child: child,
      ),
    );
    return _DecoratedItem(
      first: first,
      last: last,
      opacity: 1,
      child: animate ? itemContent : child,
    );
  }
}

class _DecoratedItem extends StatelessWidget {
  final Widget child;
  final bool first;
  final bool last;
  final double opacity;
  const _DecoratedItem({
    required this.child,
    this.first = false,
    this.last = false,
    required this.opacity,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, AppTheme>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Container(
          decoration: BoxDecoration(
            color: getIt.get<ThemeBloc>().currentTheme.backSecondary,
            border: Border.all(
              width: 0,
              color: getIt.get<ThemeBloc>().currentTheme.backSecondary,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Opacity(opacity: opacity, child: child),
        ),
      );
    });
  }
}
