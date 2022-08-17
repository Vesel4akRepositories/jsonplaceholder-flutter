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
    as _i11;

import '../../feature/home/data/data_sources/local_data_source.dart' as _i6;
import '../../feature/home/data/data_sources/remote_data_source.dart' as _i7;
import '../../feature/home/data/repositories/home_repository.dart' as _i14;
import '../../feature/home/domain/repositories/i_home_repository.dart' as _i13;
import '../../feature/home/domain/use_cases/get_users_usercase.dart' as _i22;
import '../../feature/home/presentation/manager/home_bloc.dart' as _i23;
import '../../feature/post_info/data/data_sources/remote_data_sorce.dart'
    as _i8;
import '../../feature/post_info/data/repositories/post_info_repository.dart'
    as _i16;
import '../../feature/post_info/domain/repositories/i_post_info_repository.dart'
    as _i15;
import '../../feature/post_info/domain/use_cases/fetch_post_comments.dart'
    as _i19;
import '../../feature/post_info/presentation/manager/post_info_bloc.dart'
    as _i24;
import '../../feature/profile/data/data_sources/local_data_source.dart' as _i9;
import '../../feature/profile/data/data_sources/remote_data_source.dart'
    as _i10;
import '../../feature/profile/data/repositories/profile_repository.dart'
    as _i18;
import '../../feature/profile/domain/repositories/i_profile_repository.dart'
    as _i17;
import '../../feature/profile/domain/use_cases/get_posts_usecase.dart' as _i21;
import '../../feature/profile/domain/use_cases/get_profile_usecase.dart'
    as _i20;
import '../../feature/profile/presentation/manager/posts_bloc.dart' as _i25;
import '../../feature/profile/presentation/manager/profile_bloc.dart' as _i26;
import '../network/api_helper.dart' as _i3;
import '../network/network_info.dart' as _i12;
import 'register_module.dart' as _i27; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.IPostInfoRemoteDataSource>(
      () => _i8.PostInfoRemoteDataSource(get<_i3.ApiBaseService>()));
  gh.lazySingleton<_i9.IProfileLocalDataSource>(
      () => _i9.ProfileLocalDataSource(get<_i4.Box<dynamic>>()));
  gh.lazySingleton<_i10.IProfileRemoteDataSource>(
      () => _i10.ProfileRemoteDataSource(get<_i3.ApiBaseService>()));
  gh.lazySingleton<_i11.InternetConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.lazySingleton<_i12.NetworkInfo>(
      () => _i12.NetworkInfo(get<_i11.InternetConnectionChecker>()));
  gh.lazySingleton<_i13.IHomeRepository>(() => _i14.HomeRepository(
      get<_i12.NetworkInfo>(),
      get<_i7.IHomeRemoteDataSource>(),
      get<_i6.IHomeLocalDataSource>()));
  gh.lazySingleton<_i15.IPostInfoRepository>(() => _i16.PostInfoRepository(
      get<_i12.NetworkInfo>(), get<_i8.IPostInfoRemoteDataSource>()));
  gh.lazySingleton<_i17.IProfileRepository>(() => _i18.ProfileRepository(
      get<_i12.NetworkInfo>(),
      get<_i9.IProfileLocalDataSource>(),
      get<_i10.IProfileRemoteDataSource>()));
  gh.lazySingleton<_i19.FetchPostUseCase>(
      () => _i19.FetchPostUseCase(get<_i15.IPostInfoRepository>()));
  gh.lazySingleton<_i20.GetProfileUseCase>(
      () => _i20.GetProfileUseCase(get<_i17.IProfileRepository>()));
  gh.lazySingleton<_i21.GetUserPostsUseCase>(
      () => _i21.GetUserPostsUseCase(get<_i17.IProfileRepository>()));
  gh.lazySingleton<_i22.GetUsersUseCase>(
      () => _i22.GetUsersUseCase(get<_i13.IHomeRepository>()));
  gh.factory<_i23.HomeBloc>(() => _i23.HomeBloc(get<_i22.GetUsersUseCase>()));
  gh.factory<_i24.PostInfoBloc>(
      () => _i24.PostInfoBloc(get<_i19.FetchPostUseCase>()));
  gh.factory<_i25.PostsBloc>(
      () => _i25.PostsBloc(get<_i21.GetUserPostsUseCase>()));
  gh.factory<_i26.ProfileBloc>(
      () => _i26.ProfileBloc(get<_i20.GetProfileUseCase>()));
  return get;
}

class _$RegisterModule extends _i27.RegisterModule {}
