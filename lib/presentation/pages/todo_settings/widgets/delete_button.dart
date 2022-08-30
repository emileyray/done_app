part of '../todo_settings_page.dart';

class _DeleteButton extends StatefulWidget {
  final Todo? element;
  const _DeleteButton({
    this.element,
    Key? key,
  }) : super(key: key);

  @override
  State<_DeleteButton> createState() => __DeleteButtonState();
}

class __DeleteButtonState extends State<_DeleteButton> {
  late Color color;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, AppTheme>(builder: (context, themeState) {
      color = widget.element != null ? themeState.red : themeState.labelDisable;
      return GestureDetector(
        child: IntrinsicWidth(
          child: Row(
            children: [
              Icon(Icons.delete, color: color),
              Text(
                S.of(context).delete,
                style: Theme.of(context).textTheme.body.copyWith(color: color),
              )
            ],
          ),
        ),
        onTap: () {
          if (widget.element != null) {
            context.read<TodosBloc>().add(
                  TodosEvent.remove(
                    item: widget.element!,
                    actionTool: ActionTool.settingsPage,
                  ),
                );

            (Router.of(context).routerDelegate as TodosRouterDelegate)
                .goToTodosPage();
          }
        },
      );
    });
  }
}
