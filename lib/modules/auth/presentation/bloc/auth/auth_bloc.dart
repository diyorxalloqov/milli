import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:milli/modules/auth/domain/entity/auth_entity.dart';
import 'package:milli/modules/auth/domain/usecase/login_use_case.dart';
import 'package:milli/modules/auth/domain/usecase/register_use_case.dart';
import 'package:milli/utils/failures.dart';
import 'package:milli/utils/status.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase login;
  final RegisterUseCase register;

  AuthBloc(this.login, this.register) : super(const AuthState()) {
    on<_Login>((event, emit) async {
      emit(state.copyWith(status: ActionStatus.isLoading));
      Either<Failure, LoginEntity> result = await login(
          LoginParams(phone: event.phone, password: event.password));
      result.fold((l) => emit(state.copyWith(status: ActionStatus.isFailed)),
          (r) {
        event.onSucces();
        emit(state.copyWith(status: ActionStatus.isSuccess));
      });
    });
    on<_Register>((event, emit) async {
      emit(state.copyWith(status: ActionStatus.isLoading));
      Either<Failure, RegisterEntity> result = await register(RegisterParams(
          phone: event.phone,
          password: event.password,
          confirmPassword: event.passwordConfirm));
      result.fold((l) => emit(state.copyWith(status: ActionStatus.isFailed)),
          (r) {
        event.onSucces();
        emit(state.copyWith(status: ActionStatus.isSuccess));
      });
    });
  }
}
