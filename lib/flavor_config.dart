import 'package:flutter/material.dart';

class FlavorConfigDTO {
  final String appName;
  final String flavor;

  FlavorConfigDTO({required this.appName, required this.flavor});
}

class FlavorConfig extends InheritedWidget {
  const FlavorConfig({
    Key? key,
    required this.appName,
    required this.flavor,
    required Widget child,
  }) : super(key: key, child: child);

  final String appName;
  final String flavor;

  static FlavorConfig of(BuildContext context) {
    final FlavorConfig? result =
        context.dependOnInheritedWidgetOfExactType<FlavorConfig>();
    assert(result != null, 'No FlavorConfig found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(FlavorConfig oldWidget) => true;
}
