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
        return Stack(
          children: [
            Container(
              alignment:
                  widget.left ? Alignment.centerLeft : Alignment.centerRight,
              padding: EdgeInsets.only(
                right: widget.right ? 29 + (value < 72 ? 0 : value - 72) : 0,
                left: widget.left ? 27 + (value < 72 ? 0 : value - 72) : 0,
              ),
              color: getIt.get<ThemeBloc>().currentTheme.lightGrey,
              child: Stack(
                alignment:
                    widget.left ? Alignment.centerLeft : Alignment.centerRight,
                children: [
                  _Circle(
                    currentValue: value,
                    maxValue: widget.maxWidth,
                    color: widget.color,
                    left: widget.left,
                    right: widget.right,
                  ),
                  Icon(
                    widget.icon,
                    color: getIt.get<ThemeBloc>().currentTheme.white,
                  ),
                ],
              ),
            ),
          ],
        );
      },
      child: Container(
        color: widget.color,
      ),
    );
  }
}

class _Circle extends StatelessWidget {
  final double currentValue;
  final double maxValue;
  final bool? left;
  final bool? right;
  final Color color;
  const _Circle({
    required this.currentValue,
    required this.maxValue,
    required this.color,
    this.left = false,
    this.right = false,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: min(currentValue / maxValue * 2.5, 1),
      child: Transform.translate(
        offset: Offset(left! ? 11 : -12, 0),
        child: Transform.scale(
          scale: currentValue / maxValue < 0.2
              ? 0
              : Curves.easeInQuint.transform(currentValue / maxValue - 0.2) *
                  pow(currentValue, 1.9),
          child: ClipRect(
            child: Container(
              height: 1,
              width: 1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
