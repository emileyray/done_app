part of '../todos_item.dart';

class _ItemInfoButton extends StatelessWidget {
  final Todo element;
  const _ItemInfoButton({required this.element, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Icon(
        Icons.info_outline,
        color: getIt.get<ThemeBloc>().currentTheme.labelTertiary,
      ),
      onPressed: () {
        (Router.of(context).routerDelegate as TodosRouterDelegate)
            .goToEditPage(todo: element);
      },
    );
  }
}
