part of '../todo_settings_page.dart';

class _SaveButton extends StatelessWidget {
  final Function send;
  const _SaveButton({
    required this.send,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        send();
        (Router.of(context).routerDelegate as TodosRouterDelegate)
            .goToTodosPage();
      },
      child: Text(S.of(context).save.toUpperCase()),
    );
  }
}
