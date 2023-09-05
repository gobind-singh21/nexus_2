import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeDrawerHomeClickedEvent>(homeDrawerHomeClickedEvent);
    on<HomeDrawerSettingsClickedEvent>(homeDrawerSettingsClickedEvent);
    on<HomeDrawerProfileClickedEvent>(homeDrawerProfileClickedEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );
    emit(HomeCollegePageLoadingState());
    await Future.delayed(
      const Duration(seconds: 2),
    );
    emit(HomeCollegePageLoadedState());
  }

  FutureOr<void> homeDrawerHomeClickedEvent(
      HomeDrawerHomeClickedEvent event, Emitter<HomeState> emit) async {
    emit(HomeCollegePageLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    emit(HomeCollegePageLoadedState());
  }

  FutureOr<void> homeDrawerSettingsClickedEvent(
      HomeDrawerSettingsClickedEvent event, Emitter<HomeState> emit) async {
    emit(HomeSettingsPageLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    emit(HomeSettingsPageLoadedState());
  }

  FutureOr<void> homeDrawerProfileClickedEvent(
      HomeDrawerProfileClickedEvent event, Emitter<HomeState> emit) async {
    emit(HomeProfilePageLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    emit(HomeProfilePageLoadedState());
  }
}
