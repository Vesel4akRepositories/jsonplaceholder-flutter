import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/exceptions.dart';
import 'package:jsonplaceholder_bloc/feature/home/data/models/user_model.dart';

const String kCachedUsers = 'CACHED_CHARACTERS';

abstract class IHomeLocalDataSource {
  Future<List<UserModel>> getUsers();

  Future<void> cacheUsers(List<UserModel> models);
}

@LazySingleton(as: IHomeLocalDataSource)
class HomeLocalDataSource implements IHomeLocalDataSource {
  HomeLocalDataSource(this._box);

  final Box _box;

  @override
  Future<List<UserModel>> getUsers() async {
    final modelsString = await _box.get(kCachedUsers);
    if (modelsString == null) {
      throw CacheException();
    }
    return json
        .decode(modelsString)
        .map<UserModel>((e) => UserModel.fromJson(e))
        .toList();
  }

  @override
  Future<void> cacheUsers(List<UserModel> models) async {
    await _box.put(
      kCachedUsers,
      json.encode(models.map((e) => e.toJson()).toList()),
    );
  }
}
