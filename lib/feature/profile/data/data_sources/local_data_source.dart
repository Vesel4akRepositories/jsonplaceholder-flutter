import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/exceptions.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/models/post/post_model.dart';
import 'package:jsonplaceholder_bloc/feature/profile/data/models/profile/user_profile_model.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/use_cases/get_posts_usecase.dart';
import 'package:jsonplaceholder_bloc/feature/profile/domain/use_cases/get_profile_usecase.dart';

const String kCachedUser = 'kCachedUser';
const String kCachedUserPosts = 'kCachedUserPosts';

abstract class IProfileLocalDataSource {
  Future<UserProfileModel> getUserProfile(UserProfileParams params);

  Future<List<PostModel>> getUserPosts(UserPostsParams params);

  Future<void> cacheUserProfile(UserProfileModel userProfileModel);

  Future<void> cacheUserPosts(List<PostModel> posts, UserPostsParams params);
}

@LazySingleton(as: IProfileLocalDataSource)
class ProfileLocalDataSource implements IProfileLocalDataSource {
  ProfileLocalDataSource(this._box);

  final Box _box;

  @override
  Future<void> cacheUserProfile(UserProfileModel userProfileModel) async {
    await _box.put(
      '$kCachedUser-${userProfileModel.id}',
      json.encode(userProfileModel.toJson()),
    );
  }

  @override
  Future<UserProfileModel> getUserProfile(UserProfileParams params) async {
    final modelsString = await _box.get(
      '$kCachedUser-${params.userId}',
    );
    if (modelsString == null) {
      throw CacheException();
    }
    final jsonDecoded = json.decode(modelsString);
    return UserProfileModel.fromJson(jsonDecoded);
  }

  @override
  Future<void> cacheUserPosts(
      List<PostModel> posts, UserPostsParams params) async {
    await _box.put(
      '$kCachedUserPosts-${params.userId}',
      json.encode(posts.map((i) => i.toJson()).toList()),
    );
  }

  @override
  Future<List<PostModel>> getUserPosts(UserPostsParams params) async {
    final modelsString = await _box.get(
      '$kCachedUserPosts-${params.userId}',
    );
    if (modelsString == null) {
      throw CacheException();
    }
    final jsonDecoded = json.decode(modelsString);
    final posts = List<PostModel>.from(
        jsonDecoded.map((model) => PostModel.fromJson(model)));
    return posts;
  }
}
