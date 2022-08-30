// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:yandex_to_do_app/application/services/remote_config_service.dart'
    as _i4;
import 'package:yandex_to_do_app/data/api/api.dart' as _i6;
import 'package:yandex_to_do_app/presentation/ui/app_bar/bloc/app_bar_bloc.dart'
    as _i3;
import 'package:yandex_to_do_app/presentation/ui/theme/bloc/theme_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.AppBarBloc>(_i3.AppBarBloc());
  gh.singleton<_i4.RemoteConfigService>(_i4.RemoteConfigService());
  gh.singleton<_i5.ThemeBloc>(_i5.ThemeBloc());
  gh.singleton<_i6.TodosApi>(_i6.TodosApi());
  return get;
}
