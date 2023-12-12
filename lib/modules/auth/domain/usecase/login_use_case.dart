import 'package:dartz/dartz.dart';
import 'package:milli/modules/auth/data/repository/auth_repositoryImpl.dart';
import 'package:milli/modules/auth/domain/entity/auth_entity.dart';
import 'package:milli/modules/auth/domain/repository/auth_repository.dart';
import 'package:milli/utils/failures.dart';
import 'package:milli/utils/usecase.dart';

/// LOGIN USECASE

class LoginUseCase extends UseCase<LoginEntity, LoginParams> {
  final AuthRepository loginRepository = AuthRepositoryImpl();

  @override
  Future<Either<Failure, LoginEntity>> call(LoginParams params) {
    return loginRepository.login(params.phone, params.phone);
  }
}

class LoginParams {
  final String phone;
  final String password;

  LoginParams({required this.phone, required this.password});
}
