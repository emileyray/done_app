import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yandex_to_do_app/presentation/presentation.dart';

class TodosRouteInformationParser
    extends RouteInformationParser<NavigationStateDTO> {
  @override
  Future<NavigationStateDTO> parseRouteInformation(
      RouteInformation routeInformation) async {
    if (routeInformation.location == null) {
      return SynchronousFuture(NavigationStateDTO.todos());
    }
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isEmpty) {
      return SynchronousFuture(NavigationStateDTO.todos());
    }

    switch (uri.pathSegments[0]) {
      case Paths.todos:
        return Future.value(NavigationStateDTO.todos());
      case Paths.add:
        return Future.value(NavigationStateDTO.add());
      case Paths.edit:
        return NavigationStateDTO.edit(id: uri.pathSegments[1]);
      default:
        return Future.value(NavigationStateDTO.todos());
    }
  }

  @override
  RouteInformation? restoreRouteInformation(NavigationStateDTO configuration) {
    if (configuration.todosPage) {
      return const RouteInformation(location: '/${Paths.todos}');
    }
    if (!configuration.todosPage && configuration.todoId == null) {
      return const RouteInformation(location: '/${Paths.add}');
    }
    if (!configuration.todosPage && configuration.todoId != null) {
      return RouteInformation(
          location: '/${Paths.edit}/${configuration.todoId}');
    }
    return const RouteInformation(location: '/');
  }
}
