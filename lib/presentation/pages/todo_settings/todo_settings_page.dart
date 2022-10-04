import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:yandex_to_do_app/application/application.dart';
import 'package:yandex_to_do_app/data/data.dart';

import 'package:yandex_to_do_app/presentation/presentation.dart';
import 'package:yandex_to_do_app/domain/domain.dart';

part 'widgets/close_button.dart';
part 'widgets/save_button.dart';
part 'widgets/text_input.dart';
part 'widgets/importance.dart';
part 'widgets/deadline.dart';
part 'widgets/delete_button.dart';

class TodoSettingsPage extends StatefulWidget {
  final String? todoId;
  final Todo? todo;
  const TodoSettingsPage({
    this.todoId,
    this.todo,
    Key? key,
  })  : assert(todoId == null || todo == null),
        super(key: key);

  @override
  State<TodoSettingsPage> createState() => _TodoSettingsPageState();
}

class SubmitionData extends InheritedWidget {
  final String? textToSubmit;
  final Importance? importanceToSubmit;
  final DateTime? deadlineToSubmit;

  const SubmitionData({
    Key? key,
    this.textToSubmit,
    this.importanceToSubmit,
    this.deadlineToSubmit,
    required Widget child,
  }) : super(key: key, child: child);

  static SubmitionData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SubmitionData>()!;
  }

  @override
  bool updateShouldNotify(SubmitionData oldWidget) =>
      textToSubmit != oldWidget.textToSubmit ||
      importanceToSubmit != oldWidget.importanceToSubmit ||
      deadlineToSubmit != oldWidget.deadlineToSubmit;
}

class _TodoSettingsPageState extends State<TodoSettingsPage> {
  String? textToSubmit;
  Importance? importanceToSubmit;
  DateTime? deadlineToSubmit;
  Todo? todo;
  bool todoFetched = false;

  @override
  void initState() {
    super.initState();

    if (widget.todo == null) {
      fecthTodo();
    } else {
      todo = widget.todo;
      initSubmissionData();
      todoFetched = true;
    }
  }

  void fecthTodo() async {
    if (widget.todoId != null) {
      TodosRepositoryImpl().getTodo(widget.todoId!);
      initSubmissionData();
    }

    if (mounted) {
      setState(() {
        todoFetched = true;
      });
    }
  }

  void initSubmissionData() {
    textToSubmit = todo!.text;
    importanceToSubmit = todo!.importance;
    if (todo!.deadline != null) {
      deadlineToSubmit = DateTime.fromMillisecondsSinceEpoch(todo!.deadline!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, AppTheme>(
      builder: (context, themeState) {
        return Scaffold(
          body: SafeArea(
            child: todoFetched
                ? CustomScrollView(
                    slivers: [
                      SubmitionData(
                        textToSubmit: textToSubmit,
                        importanceToSubmit: importanceToSubmit,
                        deadlineToSubmit: deadlineToSubmit,
                        child: _AppBar(
                          element: todo,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: _PageContent(
                            element: todo,
                            supportSeparator: themeState.supportSeparator,
                            submitText: (value) {
                              setState(() {
                                textToSubmit = value;
                              });
                            },
                            submitImportance: (value) {
                              setState(() {
                                importanceToSubmit = value;
                              });
                            },
                            submitDeadline: (value) {
                              setState(() {
                                deadlineToSubmit = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                : Center(
                    child: CircularProgressIndicator(
                      color: getIt.get<ThemeBloc>().currentTheme.blue,
                    ),
                  ),
          ),
        );
      },
    );
  }
}

class _HorizontalPadding extends StatelessWidget {
  final Widget child;
  const _HorizontalPadding({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: child,
    );
  }
}

class _AppBar extends StatelessWidget {
  final Todo? element;
  const _AppBar({
    this.element,
    Key? key,
  }) : super(key: key);

  @override
  build(BuildContext context) {
    return BlocBuilder<AppBarBloc, bool>(
      builder: (context, isShown) => SliverAppBar(
        automaticallyImplyLeading: false,
        pinned: isShown,
        snap: !isShown,
        floating: !isShown,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: const EdgeInsets.only(left: 21, right: 16),
          title: Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                const _CloseButton(),
                const Spacer(),
                _SaveButton(
                  key: const Key('save_button'),
                  send: () => onSave(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onSave(BuildContext context) {
    SubmitionData submitionData = SubmitionData.of(context);
    element == null
        ? context.read<TodosBloc>().add(
              TodosEvent.add(
                text: submitionData.textToSubmit ?? '',
                importance:
                    submitionData.importanceToSubmit ?? Importance.basic,
                deadline: submitionData.deadlineToSubmit,
                actionTool: ActionTool.settingsPage,
                tag: Tag.work,
                color: 'fc03ad',
              ),
            )
        : context.read<TodosBloc>().add(
              TodosEvent.edit(
                item: element!,
                text: submitionData.textToSubmit ?? '',
                importance:
                    submitionData.importanceToSubmit ?? Importance.basic,
                deadline: submitionData.deadlineToSubmit,
                actionTool: ActionTool.settingsPage,
              ),
            );
  }
}

class _PageContent extends StatelessWidget {
  final Function(String) submitText;
  final Function(Importance) submitImportance;
  final Function(DateTime?) submitDeadline;
  final Color supportSeparator;
  final Todo? element;
  const _PageContent({
    required this.submitDeadline,
    required this.submitImportance,
    required this.submitText,
    required this.supportSeparator,
    required this.element,
    Key? key,
  }) : super(key: key);

  final SizedBox smallHeight = const SizedBox(
    height: 16,
  );

  final SizedBox mediumHeight = const SizedBox(
    height: 23,
  );

  final SizedBox largeHeight = const SizedBox(
    height: 45,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _HorizontalPadding(
          child: _TextInput(
            element: element,
            submit: submitText,
          ),
        ),
        mediumHeight,
        _HorizontalPadding(
          child: _Importance(
            element: element,
            submit: submitImportance,
          ),
        ),
        smallHeight,
        _HorizontalPadding(
          child: Divider(
            height: 0.5,
            color: supportSeparator,
          ),
        ),
        smallHeight,
        _HorizontalPadding(
          child: _Deadline(
            element: element,
            submit: submitDeadline,
          ),
        ),
        largeHeight,
        Divider(
          height: 0.5,
          color: supportSeparator,
        ),
        mediumHeight,
        _HorizontalPadding(
          child: _DeleteButton(
            element: element,
          ),
        ),
        mediumHeight,
      ],
    );
  }
}
