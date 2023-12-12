import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String message;

  const Failure({this.message = ''});

  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  @override
  final String message;
  final String code;
  final int sec;

  const ServerFailure({this.message = '', this.code = '', this.sec = 0})
      : super(message: message);
}

class LocalDbFailure extends Failure {
  @override
  final String message;

  const LocalDbFailure({
    this.message = '',
  }) : super(message: message);
}