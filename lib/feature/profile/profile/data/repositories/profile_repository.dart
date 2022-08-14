import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/exceptions.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/core/network/network_info.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/data/data_sources/local_data_source.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/data/data_sources/remote_data_source.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/data/models/user_profile_model.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/entities/user_profile.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/repositories/i_profile_repository.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/use_cases/get_profile_usecase.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final NetworkInfo _networkInfo;
  final IProfileLocalDataSource _localDataSource;
  final IProfileRemoteDataSource _remoteDataSource;

  ProfileRepository(
      this._networkInfo, this._localDataSource, this._remoteDataSource);

  @override
  Future<Either<Failure, UserProfile>> getUserProfile(
      UserProfileParams params) async {
    if (await _networkInfo.isConnected) {
      try {
        final userProfileModel = await _remoteDataSource.getUserProfile(params);
        final entity = userProfileModel.toEntity();
        await _localDataSource.cacheUserProfile(userProfileModel);
        return Right(entity);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final userProfileModel = await _localDataSource.getUserProfile(params);
        final entity = userProfileModel.toEntity();
        return Right(entity);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
