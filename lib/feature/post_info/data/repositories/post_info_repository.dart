import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/exceptions.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/core/network/network_info.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/data/data_sources/remote_data_sorce.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/data/models/comment_model.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/entities/comment.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/repositories/i_post_info_repository.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/use_cases/fetch_post_comments.dart';

@LazySingleton(as: IPostInfoRepository)
class PostInfoRepository implements IPostInfoRepository {
  final NetworkInfo _networkInfo;
  final IPostInfoRemoteDataSource _remoteDataSource;

  PostInfoRepository(this._networkInfo, this._remoteDataSource);

  @override
  Future<Either<Failure, List<Comment>>> getPostComments(
      PostInfoParams params) async {
    if (await _networkInfo.isConnected) {
      try {
        final models = await _remoteDataSource.getPostComments(params);
        final entities = models.map<Comment>((e) => e.toEntity()).toList();
        return Right(entities);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NoInternetConnectionFailure());
    }
  }
}
