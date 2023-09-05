part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitialState extends AuthState {}

class AuthActionState extends AuthState {}

class AuthSignInOutlinedState extends AuthState {}

class AuthSignInFilledState extends AuthState {}

class AuthSignUpOutlinedState extends AuthState {}

class AuthSignUpFilledState extends AuthState {}
