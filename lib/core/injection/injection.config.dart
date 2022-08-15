// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i10;

import '../../feature/home/data/data_sources/local_data_source.dart' as _i6;
import '../../feature/home/data/data_sources/remote_data_source.dart' as _i7;
import '../../feature/home/data/repositories/home_repository.dart' as _i13;
import '../../feature/home/domain/repositories/i_home_repository.dart' as _i12;
import '../../feature/home/domain/use_cases/get_users_usercase.dart' as _i18;
import '../../feature/home/presentation/manager/home_bloc.dart' as _i19;
import '../../feature/profile/data/data_sources/local_data_source.dart' as _i8;
import '../../feature/profile/data/data_sources/remote_data_source.dart' as _i9;
import '../../feature/profile/data/repositories/profile_repository.dart'
    as _i15;
import '../../feature/profile/domain/repositories/i_profile_repository.dart'
    as _i14;
import '../../feature/profile/domain/use_cases/get_posts_usecase.dart' as _i17;
import '../../feature/profile/domain/use_cases/get_profile_usecase.dart'
    as _i16;
import '../../feature/profile/presentation/manager/posts_bloc.dart' as _i20;
import '../../feature/profile/presentation/manager/profile_bloc.dart' as _i21;
import '../network/api_helper.dart' as _i3;
import '../network/network_info.dart' as _i11;
import 'register_module.dart' as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.ApiBaseService>(() => _i3.ApiBaseService());
  await gh.lazySingletonAsync<_i4.Box<dynamic>>(() => registerModule.openBox,
      preResolve: true);
  gh.lazySingleton<_i5.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i6.IHomeLocalDataSource>(
      () => _i6.HomeLocalDataSource(get<_i4.Box<dynamic>>()));
  gh.lazySingleton<_i7.IHomeRemoteDataSource>(
      () => _i7.HomeRemoteDataSource(get<_i3.ApiBaseService>()));
  gh.lazySingleton<_i8.IProfileLocalDataSource>(
      () => _i8.ProfileLocalDataSource(get<_i4.Box<dynamic>>()));
  gh.lazySingleton<_i9.IProfileRemoteDataSource>(
      () => _i9.ProfileRemoteDataSource(get<_i3.ApiBaseService>()));
  gh.lazySingleton<_i10.InternetConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.lazySingleton<_i11.NetworkInfo>(
      () => _i11.NetworkInfo(get<_i10.InternetConnectionChecker>()));
  gh.lazySingleton<_i12.IHomeRepository>(() => _i13.HomeRepository(
      get<_i11.NetworkInfo>(),
      get<_i7.IHomeRemoteDataSource>(),
      get<_i6.IHomeLocalDataSource>()));
  gh.lazySingleton<_i14.IProfileRepository>(() => _i15.ProfileRepository(
      get<_i11.NetworkInfo>(),
      get<_i8.IProfileLocalDataSource>(),
      get<_i9.IProfileRemoteDataSource>()));
  gh.lazySingleton<_i16.GetProfileUseCase>(
      () => _i16.GetProfileUseCase(get<_i14.IProfileRepository>()));
  gh.lazySingleton<_i17.GetUserPostsUseCase>(
      () => _i17.GetUserPostsUseCase(get<_i14.IProfileRepository>()));
  gh.lazySingleton<_i18.GetUsersUseCase>(
      () => _i18.GetUsersUseCase(get<_i12.IHomeRepository>()));
  gh.factory<_i19.HomeBloc>(() => _i19.HomeBloc(get<_i18.GetUsersUseCase>()));
  gh.factory<_i20.PostsBloc>(
      () => _i20.PostsBloc(get<_i17.GetUserPostsUseCase>()));
  gh.factory<_i21.ProfileBloc>(
      () => _i21.ProfileBloc(get<_i16.GetProfileUseCase>()));
  return get;
}

class _$RegisterModule extends _i22.RegisterModule {}
