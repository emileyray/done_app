import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:yandex_to_do_app/domain/domain.dart';
import 'package:yandex_to_do_app/presentation/navigation/transitioned_page.dart';
import 'package:yandex_to_do_app/presentation/presentation.dart';

class TodosRouterDelegate extends RouterDelegate<NavigationStateDTO>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  final TodosTransitionDelegate transitionDelegate = TodosTransitionDelegate();
  NavigationState state = NavigationState(true, null, null);

  bool get isTodosPage => state.isTodosPage;
  bool get isAddPage =>
      !state.isTodosPage && (state.todoId == null && state.todo == null);
  bool get isEditPage =>
      !state.isTodosPage && (state.todoId != null || state.todo != null);

  void goToAddPage() {
    state
      ..isTodosPage = false
      ..todoId = null
      ..todo = null;
    FirebaseAnalytics.instance.setCurrentScreen(screenName: 'add_page');
    notifyListeners();
  }

  void goToTodosPage() {
    state
      ..isTodosPage = true
      ..todoId = null
      ..todo = null;
    FirebaseAnalytics.instance.setCurrentScreen(screenName: 'main_page');
    notifyListeners();
  }

  void goToEditPage({Todo? todo, String? id}) {
    state
      ..isTodosPage = false
      ..todoId = id
      ..todo = todo;
    FirebaseAnalytics.instance.setCurrentScreen(screenName: 'edit_page');
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      transitionDelegate: transitionDelegate,
      onPopPage: (route, result) {
        var popStatus = route.didPop(result);
        if (popStatus) goToTodosPage();
        return popStatus;
      },
      key: navigatorKey,
      pages: [
        const MaterialPage(child: TodosPage()),
        if (!state.isTodosPage)
          TransitionedPage(
            page: TodoSettingsPage(
              todoId: state.todoId,
              todo: state.todo,
            ),
          ),
      ],
    );
  }

  @override
  NavigationStateDTO? get currentConfiguration =>
      NavigationStateDTO(state.isTodosPage, state.todoId);

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  Future<bool> popRoute() async {
    if (!state.isTodosPage) {
      state
        ..isTodosPage = true
        ..todoId = null
        ..todo = null;
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> setNewRoutePath(NavigationStateDTO configuration) {
    state.isTodosPage = configuration.todosPage;
    state.todoId = configuration.todoId;
    return Future.value();
  }
}
