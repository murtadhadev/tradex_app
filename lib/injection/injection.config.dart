// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tradex_app/core/network/dio_client.dart' as _i51;
import 'package:tradex_app/features/home/data/datasources/home_remote_data_source.dart'
    as _i431;
import 'package:tradex_app/features/home/data/repositories/home_repository_impl.dart'
    as _i424;
import 'package:tradex_app/features/home/domain/repositories/home_repository.dart'
    as _i74;
import 'package:tradex_app/features/home/domain/usecases/get_home_data.dart'
    as _i798;
import 'package:tradex_app/features/home/presentation/bloc/home_bloc.dart'
    as _i968;
import 'package:tradex_app/injection/register_module.dart' as _i206;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i51.DioClient>(() => _i51.DioClient());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i431.HomeRemoteDataSource>(
        () => registerModule.homeRemoteDataSource(gh<_i361.Dio>()));
    gh.lazySingleton<_i74.HomeRepository>(
        () => _i424.HomeRepositoryImpl(gh<_i431.HomeRemoteDataSource>()));
    gh.factory<_i798.GetHomeData>(
        () => _i798.GetHomeData(gh<_i74.HomeRepository>()));
    gh.factory<_i968.HomeBloc>(() => _i968.HomeBloc(gh<_i798.GetHomeData>()));
    return this;
  }
}

class _$RegisterModule extends _i206.RegisterModule {}
