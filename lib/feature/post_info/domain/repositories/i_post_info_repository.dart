import 'package:dartz/dartz.dart';
import 'package:jsonplaceholder_bloc/core/error/failures.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/entities/comment.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/use_cases/fetch_post_comments.dart';

abstract class IPostInfoRepository {
  Future<Either<Failure, List<Comment>>> getPostComments(PostInfoParams params);
}