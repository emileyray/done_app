import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_bar_bloc.freezed.dart';

@freezed
class AppBarEvent with _$AppBarEvent {
  const factory AppBarEvent.hide() = _Hide;

  const factory AppBarEvent.show() = _Show;
}

@Singleton()
class AppBarBloc extends Bloc<AppBarEvent, bool> {
  bool isShown = true;

  AppBarBloc() : super(true) {
    on<_Hide>(_hide);
    on<_Show>(_show);
  }

  _hide(_Hide event, emit) {
    isShown = false;
    emit(isShown);
  }

  _show(_Show event, emit) {
    isShown = true;
    emit(isShown);
  }
}
