part of 'auth_cubit.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoggedIn extends AuthState {
  final String email;
  final String password;

  AuthLoggedIn({required this.email, required this.password});
}

class AuthLoggedOut extends AuthState {}
