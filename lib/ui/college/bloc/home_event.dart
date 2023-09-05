part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class HomeDrawerHomeClickedEvent extends HomeEvent {}

class HomeDrawerSettingsClickedEvent extends HomeEvent {}

class HomeDrawerProfileClickedEvent extends HomeEvent {}
