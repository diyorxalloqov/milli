part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required VoidCallback onSucces,
    required String phone,
    required String password,
  }) = _Login;
  const factory AuthEvent.register({
    required VoidCallback onSucces,
    required String phone,
    required String password,
    required String passwordConfirm,
  }) = _Register;
}
