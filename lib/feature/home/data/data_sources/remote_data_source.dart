import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/error/exceptions.dart';
import 'package:jsonplaceholder_bloc/core/network/api_helper.dart';
import 'package:jsonplaceholder_bloc/feature/home/data/models/user_model.dart';

abstract class IHomeRemoteDataSource {
  Future<List<UserModel>> getUsers();
}

@LazySingleton(as: IHomeRemoteDataSource)
class HomeRemoteDataSource implements IHomeRemoteDataSource {
  final ApiBaseService _apiBaseService;

  HomeRemoteDataSource(this._apiBaseService);

  @override
  Future<List<UserModel>> getUsers() async {
    try {
      final response = await _apiBaseService.getWithoutParams(
        '/users',
      );
      if (response.statusCode == 200) {
        final responseData = response.data;

        return responseData
            .map((e) => UserModel.fromJson(e))
            .cast<UserModel>()
            .toList();
      } else {
        throw ServerException();
      }
    } on DioError {
      throw ServerException();
    }
  }
}
