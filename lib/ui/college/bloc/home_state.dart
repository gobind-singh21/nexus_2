part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadingSuccessfulState extends HomeState {}

class HomeErrorState extends HomeState {}

class HomeCollegePageLoadingState extends HomeState {}

class HomeCollegePageLoadedState extends HomeState {}

class HomeSettingsPageLoadingState extends HomeState {}

class HomeSettingsPageLoadedState extends HomeState {}

class HomeProfilePageLoadingState extends HomeState {}

class HomeProfilePageLoadedState extends HomeState {}
