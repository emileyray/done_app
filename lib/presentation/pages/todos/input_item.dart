part of 'todos_page.dart';

class _InputItem extends StatefulWidget {
  const _InputItem({Key? key}) : super(key: key);

  @override
  State<_InputItem> createState() => _InputItemState();
}

class _InputItemState extends State<_InputItem> with WidgetsBindingObserver {
  final FocusNode _focus = FocusNode();
  final FocusNode _textFocus = FocusNode();
  final TextEditingController _controller = TextEditingController();
  final TextInputAction _textInputAction = TextInputAction.none;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    final value = WidgetsBinding.instance.window.viewInsets.bottom;
    if (value == 0) {
      onKeyboardGone();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _focus.dispose();
    _textFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBarBloc, bool>(
      builder: (context, state) {
        return RawKeyboardListener(
          focusNode: _focus,
          onKey: (event) {
            if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
              onEnterPressed();
            }
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 14),
            child: AppBarHider(
              textField: TextField(
                cursorColor: getIt.get<ThemeBloc>().currentTheme.grey,
                maxLines: 3,
                minLines: 1,
                focusNode: _textFocus,
                controller: _controller,
                textInputAction: _textInputAction,
                decoration: InputDecoration.collapsed(
                  hintText: S.of(context).new_,
                  hintStyle: Theme.of(context).textTheme.body.copyWith(
                      color: getIt.get<ThemeBloc>().currentTheme.labelTertiary),
                ),
                style: Theme.of(context).textTheme.body.copyWith(
                    color: getIt.get<ThemeBloc>().currentTheme.labelPrimary),
              ),
            ),
          ),
        );
      },
    );
  }

  void onEnterPressed() {
    if (_controller.text[_controller.text.length - 1] == '\n') {
      _controller.text =
          _controller.text.substring(0, _controller.text.length - 1);
    }
    _focus.unfocus();
  }

  void onKeyboardGone() {
    _focus.unfocus();

    if (mounted) {
      if (_controller.text != '') {
        context.read<TodosBloc>().add(
              TodosEvent.add(
                text: _controller.text,
                importance: Importance.basic,
                deadline: null,
                actionTool: ActionTool.todosPage,
              ),
            );
      }
    }
  }
}
