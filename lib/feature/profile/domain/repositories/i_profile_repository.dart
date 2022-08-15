import 'package:dartz/dartz.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/post/post.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/entities/profile/user_profile.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/use_cases/get_posts_usecase.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/use_cases/get_profile_usecase.dart';

abstract class IProfileRepository {
  Future<Either<Failure, UserProfile>> getUserProfile(UserProfileParams params);
  Future<Either<Failure, List<Post>>> getUserPosts(UserPostsParams params);

}