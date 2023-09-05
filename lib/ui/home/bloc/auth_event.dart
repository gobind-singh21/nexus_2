part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class HomeAuthButtonInitialEvent extends AuthEvent {}

class HomeAuthSignInHoverEvent extends AuthEvent {}

class HomeAuthSignInHoverRemovedEvent extends AuthEvent {}

class HomeAuthSignInClickedEvent extends AuthEvent {}

class HomeAuthSignUpHoverEvent extends AuthEvent {}

class HomeAuthSignUpHoverRemovedEvent extends AuthEvent {}

class HomeAuthSignUpClickedEvent extends AuthEvent {}
