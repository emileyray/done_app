part of '../todos_item.dart';

class ValueListenableBackground extends StatefulWidget {
  final ValueNotifier<double> offset;
  final double maxWidth;
  final IconData icon;
  final Color color;
  final bool right;
  final bool left;

  const ValueListenableBackground({
    required this.offset,
    required this.maxWidth,
    required this.icon,
    required this.color,
    this.right = false,
    this.left = false,
    Key? key,
  })  : assert(right != left),
        super(key: key);

  @override
  State<ValueListenableBackground> createState() =>
      _ValueListenableBackgroundState();
}

class _ValueListenableBackgroundState extends State<ValueListenableBackground> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<double>(
      valueListenable: widget.offset,
      builder: (context, value, child) {
        return Container(
          alignment: widget.left ? Alignment.centerLeft : Alignment.centerRight,
          padding: EdgeInsets.only(
            right: widget.right ? 29 + (value < 72 ? 0 : value - 72) : 0,
            left: widget.left ? 27 + (value < 72 ? 0 : value - 72) : 0,
          ),
          color: widget.color,
          child: Icon(
            widget.icon,
            color: getIt.get<ThemeBloc>().currentTheme.white,
          ),
        );
      },
      child: Container(
        color: widget.color,
      ),
    );
  }
}
