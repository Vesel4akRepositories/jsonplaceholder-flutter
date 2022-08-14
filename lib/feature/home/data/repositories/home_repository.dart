import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/exceptions.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/core/network/network_info.dart';
import 'package:jsonplaceholder_bloc/feature/home/data/models/user_model.dart';
import 'package:jsonplaceholder_bloc/feature/home/domain/entities/user.dart';
import 'package:jsonplaceholder_bloc/feature/home/domain/repositories/i_home_repository.dart';

import '../data_sources/local_data_source.dart';
import '../data_sources/remote_data_source.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final NetworkInfo _networkInfo;
  final IHomeRemoteDataSource _remoteDataSource;
  final IHomeLocalDataSource _localDataSource;

  HomeRepository(
      this._networkInfo, this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    if (await _networkInfo.isConnected) {
      try {
        final models = await _remoteDataSource.getUsers();
        final entities = models.map<User>((e) => e.toEntity()).toList();
        await _localDataSource.cacheUsers(models);
        return Right(entities);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final models = await _localDataSource.getUsers();
        final entities = models.map<User>((e) => e.toEntity()).toList();
        return Right(entities);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
