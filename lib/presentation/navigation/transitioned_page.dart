import 'package:flutter/material.dart';

class TransitionedPage extends Page {
  final Widget page;

  const TransitionedPage({required this.page, LocalKey? key}) : super(key: key);

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const beginSlide = Offset(1.0, 0.0);
        const endSlide = Offset.zero;
        const slideCurve = Curves.ease;

        var slideTween = Tween(begin: beginSlide, end: endSlide)
            .chain(CurveTween(curve: slideCurve));

        const beginFade = 0.0;
        const endFade = 1.0;
        const fadeCurve = Curves.easeIn;

        var fadeTween = Tween(begin: beginFade, end: endFade)
            .chain(CurveTween(curve: fadeCurve));

        return FadeTransition(
          opacity: animation.drive(fadeTween),
          child: SlideTransition(
            position: animation.drive(slideTween),
            child: child,
          ),
        );
      },
    );
  }
}
