import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/exceptions.dart';
import 'package:jsonplaceholder_bloc/core/network/api_helper.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/models/post/post_model.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/models/profile/user_profile_model.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/use_cases/get_posts_usecase.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/use_cases/get_profile_usecase.dart';

abstract class IProfileRemoteDataSource {
  Future<UserProfileModel> getUserProfile(UserProfileParams params);

  Future<List<PostModel>> getUserPosts(UserPostsParams params);
}

@LazySingleton(as: IProfileRemoteDataSource)
class ProfileRemoteDataSource implements IProfileRemoteDataSource {
  final ApiBaseService _apiBaseService;

  ProfileRemoteDataSource(this._apiBaseService);

  @override
  Future<UserProfileModel> getUserProfile(UserProfileParams params) async {
    try {
      final response = await _apiBaseService.getWithoutParams(
        '/users/${params.userId}',
      );
      if (response.statusCode == 200) {
        final responseData = response.data;
        return UserProfileModel.fromJson(responseData);
      } else {
        throw ServerException();
      }
    } on DioError {
      throw ServerException();
    }
  }

  @override
  Future<List<PostModel>> getUserPosts(UserPostsParams params) async {
    try {
      final response = await _apiBaseService.getWithParam(
        'posts',
        {'userId': params.userId},
      );
      if (response.statusCode == 200) {
        final responseData = response.data;
        List<PostModel> posts = responseData
            .map<PostModel>((model) => PostModel.fromJson(model))
            .toList();
        return posts;
      } else {
        throw ServerException();
      }
    } on DioError {
      throw ServerException();
    }
  }
}
