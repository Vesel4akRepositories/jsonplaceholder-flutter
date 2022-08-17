import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/exceptions.dart';
import 'package:jsonplaceholder_bloc/core/network/api_helper.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/data/models/comment_model.dart';
import 'package:jsonplaceholder_bloc/feature/post_info/domain/use_cases/fetch_post_comments.dart';

abstract class IPostInfoRemoteDataSource {
  Future<List<CommentModel>> getPostComments(PostInfoParams params);
}

@LazySingleton(as: IPostInfoRemoteDataSource)
class PostInfoRemoteDataSource implements IPostInfoRemoteDataSource {
  final ApiBaseService _apiBaseService;

  PostInfoRemoteDataSource(this._apiBaseService);

  @override
  Future<List<CommentModel>> getPostComments(PostInfoParams params) async {
    try {
      final response = await _apiBaseService.getWithoutParams(
        '/posts/${params.postId}/comments',
      );
      if (response.statusCode == 200) {
        final responseData = response.data;
        final commentModels = responseData
            .map<CommentModel>((e) => CommentModel.fromJson(e))
            .toList();
        return commentModels;
      } else {
        throw ServerException();
      }
    } on DioError {
      throw ServerException();
    }
  }
}
