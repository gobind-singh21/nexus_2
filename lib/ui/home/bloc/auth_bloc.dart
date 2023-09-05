import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitialState()) {
    on<AuthEvent>((event, emit) {});
    on<HomeAuthButtonInitialEvent>(homeAuthButtonInitialEvent);
    on<HomeAuthSignInHoverEvent>(homeAuthSignInHoverEvent);
    on<HomeAuthSignInHoverRemovedEvent>(homeAuthSignInHoverRemovedEvent);
    on<HomeAuthSignUpHoverEvent>(homeAuthSignUpHoverEvent);
    on<HomeAuthSignUpHoverRemovedEvent>(homeAuthSignUpHoverRemovedEvent);
  }

  FutureOr<void> homeAuthButtonInitialEvent(
      HomeAuthButtonInitialEvent event, Emitter<AuthState> emit) {
    emit(AuthInitialState());
  }

  FutureOr<void> homeAuthSignInHoverEvent(
      HomeAuthSignInHoverEvent event, Emitter<AuthState> emit) {
    emit(AuthSignInOutlinedState());
  }

  FutureOr<void> homeAuthSignInHoverRemovedEvent(
      HomeAuthSignInHoverRemovedEvent event, Emitter<AuthState> emit) {
    emit(AuthSignInFilledState());
  }

  FutureOr<void> homeAuthSignUpHoverEvent(
      HomeAuthSignUpHoverEvent event, Emitter<AuthState> emit) {
    emit(AuthSignUpFilledState());
  }

  FutureOr<void> homeAuthSignUpHoverRemovedEvent(
      HomeAuthSignUpHoverRemovedEvent event, Emitter<AuthState> emit) {
    emit(AuthSignUpOutlinedState());
  }
}
