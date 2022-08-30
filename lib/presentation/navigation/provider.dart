import 'dart:ui';

import 'package:flutter/material.dart';

class DebugRouteInformationProvider extends PlatformRouteInformationProvider {
  DebugRouteInformationProvider()
      : super(
            initialRouteInformation: RouteInformation(
                location: PlatformDispatcher.instance.defaultRouteName));

  @override
  Future<bool> didPushRoute(String route) {
    debugPrint('Platform reports $route');
    return super.didPushRoute(route);
  }

  @override
  Future<bool> didPopRoute() {
    debugPrint('popped');
    return super.didPopRoute();
  }

  @override
  Future<bool> didPushRouteInformation(RouteInformation routeInformation) {
    debugPrint('Platform reports routeinformation: $routeInformation');
    return super.didPushRouteInformation(routeInformation);
  }
}
