abstract class AuthState {}

class InitialAuthState extends AuthState {}

class LoadingAuthState extends AuthState {}

class SuccessAuthState extends AuthState {
  final String successMessage;
  SuccessAuthState({required this.successMessage});
}

class FailureAuthState extends AuthState {
  final String errorMessage;
  FailureAuthState({required this.errorMessage});
}
