part of 'app_bar_bloc.dart';

@immutable
abstract class AppBarState {}

final class AppBarInitial extends AppBarState {}

class AppBarActionState extends AppBarState {}

class AppBarInitialState extends AppBarState {}

class HomeAppBarHomeInitialState extends AppBarState {}

class HomeAppBarHomeOutlinedState extends AppBarState {}

class HomeAppBarEventInitialState extends AppBarState {}

class HomeAppBarEventOutlinedState extends AppBarState {}
