import 'package:flutter/material.dart';

//решил сделать свой Dismissible потому что существующий недостаточно кастомизируемый,
//а другие пакеты использовать нежелательно 💀💀💀

enum CustomDismissibleDirection {
  leftToRight,
  rightToLeft,
  none,
}

class CustomDismissibleDetails {
  CustomDismissibleDetails({
    required this.progress,
  });

  double progress;
}

class _CustomDismissibleClipper extends CustomClipper<Rect> {
  final double offset;

  _CustomDismissibleClipper({
    required this.offset,
  });

  @override
  Rect getClip(Size size) {
    if (offset < 0) {
      return Rect.fromLTRB(size.width + offset, 0.0, size.width, size.height);
    }
    return Rect.fromLTRB(0.0, 0.0, offset, size.height);
  }

  @override
  bool shouldReclip(_CustomDismissibleClipper oldClipper) {
    return oldClipper.offset != offset;
  }
}

const _resizeDuration = Duration(milliseconds: 300);
const _resizeCurve = Interval(0.4, 1.0, curve: Curves.ease);

class CustomDismissible extends StatefulWidget {
  final Widget child;
  final Widget leftBackground;
  final Widget rightBackground;
  final Function(CustomDismissibleDirection) onDismissed;
  final bool Function(CustomDismissibleDirection) confirmDismiss;
  final Function(CustomDismissibleDetails)? onUpdate;
  final Duration movementDuration;
  final double? leftLimit;
  final double? rightLimit;
  const CustomDismissible({
    required this.child,
    required this.leftBackground,
    required this.rightBackground,
    required this.onDismissed,
    this.leftLimit,
    this.rightLimit,
    required this.movementDuration,
    required this.confirmDismiss,
    this.onUpdate,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDismissible> createState() => _CustomDismissibleState();
}

class _CustomDismissibleState extends State<CustomDismissible>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late AnimationController _moveController;
  late Animation<double> _moveAnimation;

  late AnimationController _resizeController;
  late Animation<double> _resizeAnimation;

  double _currentDrag = 0;
  bool _beingDismissied = false;
  bool _dismissed = false;
  bool _resizing = false;
  bool _beingCancelled = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _moveController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.movementDuration.inMilliseconds),
    );

    _moveAnimation =
        Tween(begin: _currentDrag, end: 0.0).animate(_moveController)
          ..addListener(() {
            setState(() {});
          });

    _resizeController = AnimationController(
      duration: _resizeDuration,
      vsync: this,
    );

    _resizeAnimation = _resizeController
        .drive(CurveTween(
          curve: _resizeCurve,
        ))
        .drive(Tween<double>(
          begin: 1.0,
          end: 0.0,
        ))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _dismissed = false;
            _resizing = false;
            updateKeepAlive();
          });
        }
      })
      ..addListener(_handleResizeProgressChanged);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(builder: (context, constraints) {
      widget.onUpdate?.call(CustomDismissibleDetails(
          progress: currentOffset / constraints.maxWidth));

      Widget content = Stack(
        fit: StackFit.passthrough,
        children: [
          Positioned.fill(
            child: ClipRect(
              clipper: _CustomDismissibleClipper(offset: currentOffset),
              child: currentOffset > 0
                  ? widget.leftBackground
                  : currentOffset < 0
                      ? widget.rightBackground
                      : Wrap(),
            ),
          ),
          Transform.translate(
            offset: Offset(currentOffset, 0),
            child: widget.child,
          ),
        ],
      );

      if (_resizeController.isAnimating || _resizeController.isCompleted) {
        return SizeTransition(
          sizeFactor: _resizeAnimation,
          axis: Axis.vertical,
          child: content,
        );
      }

      return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {},
        onHorizontalDragUpdate: (details) =>
            _onHorizontalDragUpdate(details, constraints.maxWidth),
        onHorizontalDragEnd: (details) =>
            _onHorizontalDragEnd(details, constraints.maxWidth),
        child: content,
      );
    });
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details, double maxWidth) {
    if (!_beingDismissied && !_dismissed && !_resizing && !_beingCancelled) {
      setState(() {
        if (_moveController.isAnimating) {
          _currentDrag = _moveAnimation.value;
          _moveController.stop();
        }
        _currentDrag += details.delta.dx;
        if (_currentDrag <= -(widget.rightLimit ?? maxWidth)) {
          _currentDrag = -(widget.rightLimit ?? maxWidth);
        } else if (_currentDrag >= (widget.leftLimit ?? maxWidth)) {
          _currentDrag = widget.leftLimit ?? maxWidth;
        }
      });
    }
  }

  void _onHorizontalDragEnd(DragEndDetails details, double maxWidth) {
    if (!_beingDismissied && !_dismissed && !_resizing && !_beingCancelled) {
      if (_currentDrag.sign != details.primaryVelocity!.sign) {
        if (details.primaryVelocity!.abs() >= 2000) {
          cancelDismiss(maxWidth, velocity: details.primaryVelocity);
          return;
        }

        if (details.primaryVelocity!.abs() >= 200) {
          cancelDismiss(maxWidth);
          return;
        }
      }

      if (details.primaryVelocity!.abs() >= 2000) {
        dismiss(
          maxWidth: maxWidth,
          limit: _currentDrag >= 0 ? widget.leftLimit : widget.rightLimit,
          direction: _currentDrag >= 0
              ? CustomDismissibleDirection.leftToRight
              : CustomDismissibleDirection.rightToLeft,
          velocity: details.primaryVelocity!,
        );
        return;
      }

      if (_currentDrag.abs() >= 0.3 * maxWidth) {
        dismiss(
          maxWidth: maxWidth,
          limit: _currentDrag >= 0 ? widget.leftLimit : widget.rightLimit,
          direction: _currentDrag >= 0
              ? CustomDismissibleDirection.leftToRight
              : CustomDismissibleDirection.rightToLeft,
        );
        return;
      }

      cancelDismiss(maxWidth);
    }
  }

  void cancelDismiss(double maxWidth, {double? velocity}) {
    setState(() {
      _beingCancelled = true;
      resetMoveController(
          distanceLeft: _currentDrag, maxWidth: maxWidth, velocity: velocity);
      resetMoveAnimation(begin: _currentDrag, end: 0.0);
      _moveAnimation.addStatusListener(_handleMoveStatusChanged);
      _moveController.forward();
      _currentDrag = 0;
    });
  }

  void dismiss({
    required double maxWidth,
    required CustomDismissibleDirection direction,
    double? velocity,
    double? limit,
  }) {
    double updatedLimit = limit ?? maxWidth;

    _beingDismissied = true;
    updateKeepAlive();
    setState(() {
      resetMoveController(
        distanceLeft: updatedLimit - _currentDrag.abs(),
        maxWidth: maxWidth,
        velocity: velocity,
      );

      resetMoveAnimation(
        begin: _currentDrag,
        end: direction == CustomDismissibleDirection.leftToRight
            ? updatedLimit
            : -updatedLimit,
      );

      _moveAnimation.addStatusListener((status) {
        _handleMoveStatusChanged(status, maxWidth: maxWidth);
      });

      _moveController.forward();
      // _currentDrag = direction == CustomDismissibleDirection.leftToRight
      //     ? updatedLimit
      //     : -updatedLimit;
    });
  }

  void resetMoveController({
    required double distanceLeft,
    required double maxWidth,
    double? velocity,
  }) {
    _moveController.dispose();
    _moveController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: velocity == null
            ? (widget.movementDuration.inMilliseconds *
                    distanceLeft ~/
                    maxWidth)
                .abs()
            : (maxWidth * 1000 ~/ velocity).abs(),
      ),
    );
  }

  void resetMoveAnimation({
    required double begin,
    required double end,
  }) {
    _moveAnimation = Tween(begin: begin, end: end).animate(_moveController)
      ..addListener(() {
        setState(() {});
      });

    setState(() {
      _currentDrag = end;
    });
  }

  void resize() {
    _resizing = true;
    _resizeController.forward();
  }

  void _handleMoveStatusChanged(
    AnimationStatus status, {
    double? maxWidth,
  }) {
    if (_beingCancelled) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _beingCancelled = false;
        });
      }
    } else if (_beingDismissied) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _beingDismissied = false;
          updateKeepAlive();
          if (widget.confirmDismiss(currentDirection)) {
            _dismissed = true;

            resize();
          } else {
            cancelDismiss(maxWidth!);
          }
        });
      }
    }
  }

  void _handleResizeProgressChanged() {
    if (_resizeController.isCompleted) {
      widget.onDismissed(currentDirection);
    } else {
      //widget.onResize?.call();
    }
  }

  double get currentOffset =>
      _moveController.isAnimating ? _moveAnimation.value : _currentDrag;

  CustomDismissibleDirection get currentDirection => _currentDrag > 0
      ? CustomDismissibleDirection.leftToRight
      : _currentDrag < 0
          ? CustomDismissibleDirection.rightToLeft
          : CustomDismissibleDirection.none;

  @override
  void dispose() {
    _moveController.dispose();
    _resizeController.dispose();
    super.dispose();
  }
}
