import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/exceptions.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/data/models/user_profile_model.dart';
import 'package:jsonplaceholder_bloc/feature/profile/profile/domain/use_cases/get_profile_usecase.dart';

const String kCachedUser = 'kCachedUser';

abstract class IProfileLocalDataSource {
  Future<UserProfileModel> getUserProfile(UserProfileParams params);

  Future<void> cacheUserProfile(UserProfileModel userProfileModel);
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
}
