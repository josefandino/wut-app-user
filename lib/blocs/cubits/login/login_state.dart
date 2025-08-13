part of 'login_cubit.dart';

enum FormStatus { isValid, loading, success, posting }

class LoginFormState extends Equatable {
  final bool isValid;
  final Username username;
  final Email email;
  final Password password;
  final FormStatus formStatus;

  const LoginFormState({
    this.isValid = false,
    this.username = const Username.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.formStatus = FormStatus.isValid,
  });

  LoginFormState copyWith({
    bool? isValid,
    Username? username,
    Email? email,
    Password? password,
    FormStatus? formStatus,
  }) {
    return LoginFormState(
      isValid: isValid ?? this.isValid,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      formStatus: formStatus ?? this.formStatus,
    );
  }

  @override
  List<Object> get props => [isValid, username, email, password, formStatus];
}

// final class LoginInitial extends LoginFormState {}
