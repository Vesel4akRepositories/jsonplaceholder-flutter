import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jsonplaceholder_bloc/core/utils/constants.dart';


@lazySingleton
class ApiBaseService {
  Dio? _dio;

  ApiBaseService() {
    var options = BaseOptions(receiveTimeout: 20000, connectTimeout: 20000);
    options.baseUrl = apiBaseUrl;
    options.headers['Accept'] = 'application/json';
    _dio = Dio(
      options,
    );
  }

  /// Method : POST
  /// Params : url, map for parameters
  Future<Response> post(String url, Map<String, dynamic> params) async {
    FormData body = FormData.fromMap(params);
    var response = await _dio!.post(url,
        data: body,
        options: Options(
          responseType: ResponseType.json,
        ));
    return response;
  }

  /// Method : PUT
  /// Params : url, map for parameters
  Future<Response> put(String url, Map<String, dynamic> params) async {
    var response = await _dio!.put(url,
        data: params,
        options: Options(
          responseType: ResponseType.json,
        ));
    return response;
  }

  /// Method : DELETE
  /// Params : url, map for parameters
  Future<Response> delete(String url, Map<String, String> params) async {
    var response = await _dio!.delete(url,
        data: params,
        options: Options(
          responseType: ResponseType.json,
        ));
    return response;
  }

  /// Method : GET
  /// Params : url
  Future<Response> getWithoutParams(String url) async {
    var response = await _dio!.get(url,
        options: Options(
          responseType: ResponseType.json,
        ));
    return response;
  }

  /// Method : GET
  /// Params : url, map for parameters
  Future<Response> getWithParam(String url, Map<String, dynamic> params) async {
    //_dio!.options.headers["Authorization"] = token;
    var response = (await _dio?.get(url,
        queryParameters: params,
        options: Options(
          responseType: ResponseType.json,
        )))!;
    return response;
  }
}

/// Api Response codes
class ApiResponseCode {
  static const int success_200 = 200;
  static const int success_201 = 201;
  static const int success_400 = 400;
  static const int success_499 = 499;
  static const int success_401 = 201;
  static const int success_404 = 201;
  static const int success_500 = 500;
  static const int internetUnavailable = 999;
  static const int unknown = 533;
}
