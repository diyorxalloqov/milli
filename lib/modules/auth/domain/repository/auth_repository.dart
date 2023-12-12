import 'package:dartz/dartz.dart';
import 'package:milli/modules/auth/domain/entity/auth_entity.dart';
import 'package:milli/utils/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginEntity>> login(String name, String password);
  Future<Either<Failure, RegisterEntity>> register(
      String name, String password, String confirmPassword);
}
