import 'package:dartz/dartz.dart';
import 'package:milli/modules/auth/data/model/auth_model.dart';
import 'package:milli/modules/auth/domain/entity/auth_entity.dart';
import 'package:milli/modules/auth/domain/repository/auth_repository.dart';
import 'package:milli/utils/failures.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either<Failure, LoginModel>> login(String name, String password) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, RegisterEntity>> register(
      String name, String password, String confirmPassword) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
