import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shake/shake.dart';
import 'package:yandex_to_do_app/application/get_it/get_it_service_locator.dart';
import 'package:yandex_to_do_app/presentation/presentation.dart';
import 'package:uni_links/uni_links.dart';

bool _initialUriIsHandled = false;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TodosRouterDelegate routerDelegate = TodosRouterDelegate();

  @override
  void initState() {
    super.initState();
    _handleInitialUri();
    _handleIncomingLinks();
    ShakeDetector.autoStart(
      onPhoneShake: () {
        getIt.get<ThemeBloc>().add(const ThemeEvent.changeTheme());
      },
    );
  }

  Future<void> _handleInitialUri() async {
    if (!_initialUriIsHandled) {
      _initialUriIsHandled = true;
      try {
        final uri = await getInitialUri();
        if (uri != null) {
          switch (uri.pathSegments[0]) {
            case 'add':
              routerDelegate.goToAddPage();
              break;
            case 'edit':
              if (uri.pathSegments.length > 1) {
                routerDelegate.goToEditPage(id: uri.pathSegments[1]);
              }
              break;
            default:
              routerDelegate.goToTodosPage();
          }
        }
      } on PlatformException {
        debugPrint('falied to get initial uri');
      } on FormatException catch (_) {
        if (!mounted) return;
        debugPrint('malformed initial uri');
      }
    }
  }

  late StreamSubscription _sub;
  Future<void> _handleIncomingLinks() async {
    _sub = uriLinkStream.listen((Uri? uri) {
      if (uri != null) {
        String firstSegment = uri.pathSegments[0];
        if (firstSegment == 'add') {
          routerDelegate.goToAddPage();
        }
      }
    }, onError: (err) {});
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<TodosBloc>()),
        BlocProvider(create: (_) => getIt.get<ThemeBloc>()),
        BlocProvider(create: (_) => getIt.get<AppBarBloc>()),
      ],
      child: BlocBuilder<ThemeBloc, AppTheme>(
        builder: (context, themeState) {
          return MaterialApp.router(
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            theme: themeState.themeData,
            routeInformationParser: TodosRouteInformationParser(),
            routerDelegate: routerDelegate,
            routeInformationProvider: DebugRouteInformationProvider(),
          );
        },
      ),
    );
  }
}
