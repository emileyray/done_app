import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../app_theme.dart';
part 'theme_bloc.freezed.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.setDark() = _SetDark;

  const factory ThemeEvent.setLight() = _SetLight;

  const factory ThemeEvent.changeTheme() = _ChangeTheme;
}

@Singleton()
class ThemeBloc extends Bloc<ThemeEvent, AppTheme> {
  AppTheme currentTheme = LightTheme();

  ThemeBloc() : super(LightTheme()) {
    on<_SetDark>(_setDark);
    on<_SetLight>(_setLight);
    on<_ChangeTheme>(_changeTheme);
  }

  _setDark(_SetDark event, emit) {
    currentTheme = DarkTheme();
    emit(currentTheme);
  }

  _setLight(_SetLight event, emit) {
    currentTheme = LightTheme();
    emit(currentTheme);
  }

  _changeTheme(_ChangeTheme event, emit) {
    if (currentTheme is LightTheme) {
      currentTheme = DarkTheme();
    } else {
      currentTheme = LightTheme();
    }

    emit(currentTheme);
  }
}
