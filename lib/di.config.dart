// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'Application/User/user_bloc.dart' as _i89;
import 'Application/Workout/workout_bloc.dart' as _i1051;
import 'Domain/User/auth_service.dart' as _i878;
import 'Domain/Workout/workout_service.dart' as _i998;
import 'Implementation/User/auth_impl.dart' as _i425;
import 'Implementation/Workout/workout_impl.dart' as _i896;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i878.AuthService>(() => _i425.AuthImplementation());
    gh.lazySingleton<_i998.WorkoutService>(() => _i896.WorkoutImplementation());
    gh.factory<_i1051.WorkoutBloc>(
      () => _i1051.WorkoutBloc(gh<_i998.WorkoutService>()),
    );
    gh.factory<_i89.UserBloc>(() => _i89.UserBloc(gh<_i878.AuthService>()));
    return this;
  }
}
