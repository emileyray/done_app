part of '../todo_settings_page.dart';

class _TextInput extends StatefulWidget {
  final Todo? element;
  final Function(String) submit;
  const _TextInput({
    this.element,
    required this.submit,
    Key? key,
  }) : super(key: key);

  @override
  State<_TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<_TextInput> {
  final FocusNode _textFocus = FocusNode();
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.element != null) {
      _textController.text = widget.element!.text;
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _textFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: getIt.get<ThemeBloc>().currentTheme.backSecondary,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          top: 16,
          bottom: 16,
          right: 8,
        ),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: AppBarHider(
            textField: TextField(
              focusNode: _textFocus,
              cursorColor: getIt.get<ThemeBloc>().currentTheme.grey,
              controller: _textController,
              style: Theme.of(context).textTheme.body.copyWith(
                    color: getIt.get<ThemeBloc>().currentTheme.labelPrimary,
                  ),
              minLines: 4,
              maxLines: 1000,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(right: 16),
                border: InputBorder.none,
                hintText: S.of(context).whatShouldBeDone,
                hintStyle: Theme.of(context).textTheme.body.copyWith(
                      color: getIt.get<ThemeBloc>().currentTheme.labelTertiary,
                    ),
                fillColor: Colors.white,
              ),
              onChanged: (text) {
                widget.submit(text);
              },
            ),
          ),
        ),
      ),
    );
  }
}
