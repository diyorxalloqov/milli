import 'package:dartz/dartz.dart';
import 'package:milli/modules/auth/data/repository/auth_repositoryImpl.dart';
import 'package:milli/modules/auth/domain/entity/auth_entity.dart';
import 'package:milli/modules/auth/domain/repository/auth_repository.dart';
import 'package:milli/utils/failures.dart';
import 'package:milli/utils/usecase.dart';

/// REGISTER USECASE

class RegisterUseCase extends UseCase<RegisterEntity, RegisterParams> {
  final AuthRepository registerRepository = AuthRepositoryImpl();

  @override
  Future<Either<Failure, RegisterEntity>> call(RegisterParams params) {
    return registerRepository.register(
        params.phone, params.phone, params.confirmPassword);
  }
}

class RegisterParams {
  final String phone;
  final String password;
  final String confirmPassword;

  RegisterParams({
    required this.phone,
    required this.password,
    required this.confirmPassword,
  });
}
