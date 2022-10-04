import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:yandex_to_do_app/application/application.dart';
import 'package:yandex_to_do_app/data/repositories/todos_repository.dart';
import 'package:yandex_to_do_app/domain/domain.dart';
import 'package:yandex_to_do_app/flavor_config.dart';
import 'package:yandex_to_do_app/presentation/bloc/bloc.dart';
import 'app.dart';

void mainCommon(FlavorConfigDTO flavorConfigDTO) async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        //options: DefaultFirebaseOptions.currentPlatform,
        );
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    await Hive.initFlutter();
    Hive.registerAdapter(ImportanceAdapter());
    Hive.registerAdapter(TodoAdapter());
    Hive.registerAdapter(TagAdapter());
    await Hive.openBox<Todo>('todos');
    await Hive.openBox<int>('lastRevision');
    configureDependencies();

    getIt.registerSingleton(TodosBloc(TodosRepositoryImpl()));
    getIt.get<RemoteConfigService>().initialize();

    runApp(
      FlavorConfig(
          appName: flavorConfigDTO.appName,
          flavor: flavorConfigDTO.flavor,
          child: const MyApp()),
    );
  }, (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack));
}
