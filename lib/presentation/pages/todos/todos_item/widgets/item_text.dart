part of '../todos_item.dart';

class _ItemText extends StatefulWidget {
  final Todo element;
  final TextSpan textSpan;
  final double importanceIconSize;
  const _ItemText({
    required this.element,
    required this.textSpan,
    required this.importanceIconSize,
    Key? key,
  }) : super(key: key);

  @override
  State<_ItemText> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<_ItemText> {
  late TextSpan currentTextSpan;
  bool edited = false;

  @override
  void initState() {
    super.initState();
    currentTextSpan = widget.textSpan;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          switchInCurve: Curves.easeIn,
          transitionBuilder: (Widget child, Animation<double> animation) {
            return BlocListener<TodosBloc, TodosState>(
              listener: (context, state) {
                setState(() {
                  state.maybeWhen(
                    edited: (_, __, actionTool, ___) =>
                        edited = actionTool == ActionTool.settingsPage,
                    orElse: () => edited = false,
                  );
                });
              },
              child: textTransition(child, animation, edited),
            );
          },
          child: RichText(
            key: ObjectKey(widget.element),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                if (widget.element.importance != Importance.basic &&
                    !widget.element.done)
                  importanceIcon,
                widget.textSpan,
              ],
            ),
          ),
        ),
        if (widget.element.deadline != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              DateFormat('dd.MM.yyyy').format(
                DateTime.fromMicrosecondsSinceEpoch(
                    widget.element.deadline! * 1000),
              ),
              style: Theme.of(context).textTheme.subhead.copyWith(
                    color: getIt.get<ThemeBloc>().currentTheme.labelTertiary,
                  ),
            ),
          )
      ],
    );
  }

  Widget textTransition(
      Widget child, Animation<double> animation, bool edited) {
    return Align(
      alignment: Alignment.topLeft,
      child: !edited
          ? SlideTransition(
              position: animation.status == AnimationStatus.dismissed
                  ? Tween<Offset>(
                      begin: const Offset(0, 1),
                      end: const Offset(0, 0),
                    ).animate(animation)
                  : Tween<Offset>(
                      begin: const Offset(0, -1),
                      end: const Offset(0, 0),
                    ).animate(animation),
              child: FadeTransition(opacity: animation, child: child),
            )
          : child,
    );
  }

  WidgetSpan get importanceIcon => WidgetSpan(
        child: Padding(
          padding: const EdgeInsets.only(right: 4.0, bottom: 2),
          child: Icon(
            widget.element.importance == Importance.low
                ? CustomIcons.lowImportance
                : CustomIcons.highImportance,
            color: widget.element.importance == Importance.low
                ? getIt.get<ThemeBloc>().currentTheme.grey
                : getIt.get<ThemeBloc>().currentTheme.importanceColor,
            size: widget.importanceIconSize,
          ),
        ),
      );
}
