import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/exceptions.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/core/network/network_info.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/data_sources/local_data_source.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/data_sources/remote_data_source.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/models/post/post_model.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/post/post.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/profile/user_profile.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/repositories/i_profile_repository.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/use_cases/get_posts_usecase.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/use_cases/get_profile_usecase.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/models/profile/user_profile_model.dart';

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

  @override
  Future<Either<Failure, List<Post>>> getUserPosts(
      UserPostsParams params) async {
    if (await _networkInfo.isConnected) {
      try {
        final posts = await _remoteDataSource.getUserPosts(params);
        final entities = posts.map((e) => e.toEntity()).toList();
        await _localDataSource.cacheUserPosts(posts, params);
        return Right(entities);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final posts = await _localDataSource.getUserPosts(params);
        final entities = posts.map((e) => e.toEntity()).toList();
        return Right(entities);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
