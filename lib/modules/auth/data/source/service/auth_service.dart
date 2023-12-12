import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:milli/assets/api/app_urls.dart';
import 'package:milli/core/singletons/dio.dart';
import 'package:milli/core/singletons/service_locator.dart';
import 'package:milli/modules/auth/data/model/auth_model.dart';
import 'package:milli/utils/failures.dart';

class AuthService {
  final client = serviceLocator<DioSettings>().dio;

  Future<Either<Failure, LoginModel>> login(
      {required String phone, required String password}) async {
    Map<String, dynamic> data = {"phone": phone, "password": password};

    try {
      Response<Either<String, LoginModel>> result =
          await client.post(AppUrls.login, data: data);
      print(result.realUri);
      print(result.data.toString());
      print(result.statusCode.toString());
      print(data.toString());
      if (result.statusCode == 200) {
        print(result.statusCode);
        return right(LoginModel());
      } else {
        return left(ServerFailure(message: result.statusMessage.toString()));
      }
    } on DioException catch (e) {
      print(e.message);
      return left(ServerFailure(message: e.message.toString()));
    }
  }

  Future<Either<Failure, RegisterModel>> register(
      {required String phone, required String password}) async {
    Map<String, dynamic> data = {"phone": phone, "password": password};

    try {
      Response<Either<String, LoginModel>> result =
          await client.post(AppUrls.login, data: data);
      print(result.realUri);
      print(result.data.toString());
      print(result.statusCode.toString());
      print(data.toString());
      if (result.statusCode == 201) {
        print(result.statusCode);
        return right(RegisterModel());
      } else {
        return left(ServerFailure(message: result.statusMessage.toString()));
      }
    } on DioException catch (e) {
      print(e.message);
      return left(ServerFailure(message: e.message.toString()));
    }
  }
}
