import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/core/usecase/usecase.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/post/post.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/repositories/i_profile_repository.dart';

@lazySingleton
class GetUserPostsUseCase extends UseCase<List<Post>, UserPostsParams> {
  final IProfileRepository _profileRepository;

  GetUserPostsUseCase(this._profileRepository);

  @override
  Future<Either<Failure, List<Post>>> call(UserPostsParams params) async {
    return await _profileRepository.getUserPosts(params);
  }
}

class UserPostsParams {
  final int userId;

  const UserPostsParams(this.userId);
}
