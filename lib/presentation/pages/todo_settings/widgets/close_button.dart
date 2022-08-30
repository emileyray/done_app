part of '../todo_settings_page.dart';

class _CloseButton extends StatelessWidget {
  const _CloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, AppTheme>(
      builder: (context, themeState) {
        return GestureDetector(
          child: Icon(
            Icons.close,
            color: themeState.labelPrimary,
          ),
          onTap: () {
            (Router.of(context).routerDelegate as TodosRouterDelegate)
                .goToTodosPage();
          },
        );
      },
    );
  }
}
