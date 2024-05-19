// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../bloc/monster_cubit.dart' as _i3;
import '../../data/repositories/monster.repository.dart' as _i4;
import '../../data/repositories/monster.repository.implement.dart' as _i5;
import '../../data/service/monster_service.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.MonsterCubit>(() => _i3.MonsterCubit());
    gh.lazySingleton<_i4.MonsterRepository>(() => _i5.MonsterRepositoryImp());
    gh.lazySingleton<_i6.MonsterService>(() => _i6.MonsterService());
    return this;
  }
}
