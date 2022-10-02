import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' hide TextDirection;

import 'package:yandex_to_do_app/application/application.dart';
import 'package:yandex_to_do_app/domain/domain.dart';
import 'package:yandex_to_do_app/presentation/presentation.dart';

import 'widgets/custom_dismissible.dart';
part 'widgets/item_content.dart';
part 'widgets/value_listenable_background.dart';
part 'widgets/item_checkbox.dart';
part 'widgets/item_text.dart';
part 'widgets/item_info_button.dart';

class TodosItem extends StatefulWidget {
  final Todo element;
  final bool showDone;
  const TodosItem({
    required this.element,
    required this.showDone,
    Key? key,
  }) : super(key: key);

  @override
  State<TodosItem> createState() => _TodosItemState();
}

class _TodosItemState extends State<TodosItem> {
  final ValueNotifier<double> offset = ValueNotifier<double>(0.0);

  @override
  void dispose() {
    offset.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          child: CustomDismissible(
            key: Key(widget.element.id),
            movementDuration: const Duration(milliseconds: 550),
            leftLimit: widget.showDone ? 200 : null,
            leftBackground: ValueListenableBackground(
              offset: offset,
              maxWidth: constraints.biggest.width,
              left: true,
              icon: Icons.check,
              color: getIt.get<ThemeBloc>().currentTheme.green,
            ),
            rightBackground: ValueListenableBackground(
              offset: offset,
              maxWidth: constraints.biggest.width,
              right: true,
              icon: Icons.delete,
              color: getIt.get<ThemeBloc>().currentTheme.red,
            ),
            child: ItemContent(
              element: widget.element,
            ),
            onDismissed: (direction) {
              if (direction == CustomDismissibleDirection.rightToLeft) {
                removeItem(widget.element);
              } else {
                if (!widget.showDone) {
                  setItemDone(widget.element);
                }
              }
            },
            confirmDismiss: (direction) {
              if (direction == CustomDismissibleDirection.leftToRight &&
                  widget.showDone) {
                if (!widget.element.done) {
                  setItemDone(widget.element);
                }
                return false;
              }

              return true;
            },
            onUpdate: (details) {
              offset.value = details.progress.abs() * constraints.biggest.width;
            },
          ),
        );
      },
    );
  }

  void removeItem(Todo element) {
    context.read<TodosBloc>().add(TodosEvent.remove(
          item: widget.element,
          actionTool: ActionTool.swipe,
        ));
  }

  void setItemDone(Todo element) {
    context.read<TodosBloc>().add(TodosEvent.edit(
          item: widget.element,
          actionTool: ActionTool.swipe,
        ));
  }
}
