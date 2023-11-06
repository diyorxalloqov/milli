import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:milli/utils/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

// abstract class StreamUseCase<Type, Params> {
//   Stream<Type> call(Params params);
// }
