import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/core/usecase/usecase.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/entities/comment.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/repositories/i_post_info_repository.dart';

@lazySingleton
class FetchPostUseCase extends UseCase<List<Comment>, PostInfoParams> {
  final IPostInfoRepository _postInfoRepository;

  FetchPostUseCase(this._postInfoRepository);

  @override
  Future<Either<Failure, List<Comment>>> call(PostInfoParams params) async {
    return await _postInfoRepository.getPostComments(params);
  }
}

class PostInfoParams {
  PostInfoParams(this.postId);

  final int postId;
}
