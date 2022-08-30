part of 'todos_page.dart';

class _TodosAppBar extends StatefulWidget {
  const _TodosAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<_TodosAppBar> createState() => _TodosAppBarState();
}

class _TodosAppBarState extends State<_TodosAppBar> {
  double maxTopOffset = 34;
  double minTopOffset = 0;

  double maxBottomOffset = 44;
  double minBottomOffset = 16;

  double maxLeftOffset = 60;
  double minLeftOffset = 16;

  double currentHeightRatio = 0;
  bool showDone = false;

  late ColorTween colorTween;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, AppTheme>(
      builder: (context, themeState) {
        colorTween = ColorTween(
          begin: getIt.get<ThemeBloc>().currentTheme is DarkTheme
              ? getIt.get<ThemeBloc>().currentTheme.backSecondary
              : getIt.get<ThemeBloc>().currentTheme.backPrimary,
          end: getIt.get<ThemeBloc>().currentTheme.backPrimary,
        );
        return BlocBuilder<AppBarBloc, bool>(
          builder: (context, isShown) => SliverAppBar(
            pinned: isShown,
            snap: false,
            floating: false,
            expandedHeight: 132,
            flexibleSpace: LayoutBuilder(builder: (context, constraints) {
              double minimumHeight =
                  MediaQuery.of(context).padding.top + kToolbarHeight;
              double currentHeight = constraints.biggest.height;

              currentHeightRatio =
                  (currentHeight - minimumHeight) / (132 - kToolbarHeight);
              return Container(
                color: colorTween.lerp(currentHeightRatio),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    _AppBarTitle(
                      leftOffset: leftOffset,
                      bottomOffset: bottomOffset,
                      labelTertiaty: themeState.labelTertiary,
                    ),
                    const _ShowDoneButton(),
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }

  double get leftOffset =>
      minLeftOffset + (maxLeftOffset - minLeftOffset) * currentHeightRatio;

  double get topOffset => maxTopOffset * currentHeightRatio;

  double get bottomOffset =>
      minBottomOffset +
      (maxBottomOffset - minBottomOffset) * currentHeightRatio;
}

class _AppBarTitle extends StatelessWidget {
  final double leftOffset;
  final double bottomOffset;
  final Color labelTertiaty;
  const _AppBarTitle({
    required this.leftOffset,
    required this.bottomOffset,
    required this.labelTertiaty,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      expandedTitleScale: Theme.of(context).textTheme.largeTitle.fontSize! /
          Theme.of(context).textTheme.title.fontSize!,
      titlePadding: EdgeInsets.only(
        bottom: bottomOffset,
        left: leftOffset,
      ),
      title: Container(
        alignment: Alignment.bottomLeft,
        child: Text(
          S.of(context).myTodos,
          style: Theme.of(context).textTheme.title.copyWith(
                color: getIt.get<ThemeBloc>().currentTheme.labelPrimary,
              ),
        ),
      ),
      collapseMode: CollapseMode.pin,
      background: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => Wrap(),
            orElse: () => Container(
              padding: EdgeInsets.only(
                left: leftOffset,
                bottom: 18,
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                '${S.of(context).done} - ${context.read<TodosBloc>().numOfDone}',
                style: Theme.of(context)
                    .textTheme
                    .body
                    .copyWith(color: labelTertiaty),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ShowDoneButton extends StatefulWidget {
  const _ShowDoneButton({Key? key}) : super(key: key);

  @override
  State<_ShowDoneButton> createState() => _ShowDoneButtonState();
}

class _ShowDoneButtonState extends State<_ShowDoneButton> {
  bool showDone = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodosBloc, TodosState>(
      builder: (context, state) {
        showDone = state.maybeMap<bool>(
          dataFetched: (s) => s.showDone,
          removed: (s) => s.showDone,
          added: (s) => s.showDone,
          edited: (s) => s.showDone,
          orElse: () => showDone,
        );

        return state.maybeWhen(
          initial: () => Wrap(),
          orElse: () => Padding(
            padding: const EdgeInsets.only(right: 11),
            child: IconButton(
              icon: Icon(showDone ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                showDone
                    ? context.read<TodosBloc>().add(const TodosEvent.hideDone())
                    : context
                        .read<TodosBloc>()
                        .add(const TodosEvent.showDone());
              },
            ),
          ),
        );
      },
    );
  }
}
