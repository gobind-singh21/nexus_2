import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
// import 'package:nexus_2/ui/home/bloc/home_bloc.dart';

part 'app_bar_event.dart';
part 'app_bar_state.dart';

class AppBarBloc extends Bloc<AppBarEvent, AppBarState> {
  AppBarBloc() : super(AppBarInitial()) {
    on<AppBarInitialEvent>(appBarInitialEvent);
    on<HomeAppBarHomeHoverEvent>(homeAppBarHomeHoverEvent);
    on<HomeAppBarHomeHoverRemovedEvent>(homeAppBarHomeHoverRemovedEvent);
    on<HomeAppBarEventHoverEvent>(homeAppBarEventHoverEvent);
    on<HomeAppBarEventHoverRemovedEvent>(homeAppBarEventHoverRemovedEvent);
  }

  FutureOr<void> appBarInitialEvent(
      AppBarInitialEvent event, Emitter<AppBarState> emit) async {
    emit(AppBarInitialState());
  }

  FutureOr<void> homeAppBarHomeHoverEvent(
      HomeAppBarHomeHoverEvent event, Emitter<AppBarState> emit) async {
    emit(HomeAppBarHomeOutlinedState());
  }

  FutureOr<void> homeAppBarHomeHoverRemovedEvent(
      HomeAppBarHomeHoverRemovedEvent event, Emitter<AppBarState> emit) async {
    emit(HomeAppBarHomeInitialState());
  }

  FutureOr<void> homeAppBarEventHoverEvent(
      HomeAppBarEventHoverEvent event, Emitter<AppBarState> emit) async {
    emit(HomeAppBarEventOutlinedState());
  }

  FutureOr<void> homeAppBarEventHoverRemovedEvent(
      HomeAppBarEventHoverRemovedEvent event, Emitter<AppBarState> emit) async {
    emit(HomeAppBarEventInitialState());
  }
}
