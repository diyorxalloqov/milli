class LoginEntity {
  final String phone;
  final String password;

  const LoginEntity({
    this.password = '',
    this.phone = '',
  });
}

class RegisterEntity {
  final String phone;
  final String password;
  final String passwordConfirm;

  const RegisterEntity(
      {this.password = '', this.phone = '', this.passwordConfirm = ''});
}
