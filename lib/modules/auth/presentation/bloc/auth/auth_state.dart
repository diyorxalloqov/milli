part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(ActionStatus.isPure) ActionStatus status,
  }) = _AuthState;
}
