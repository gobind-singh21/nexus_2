part of 'app_bar_bloc.dart';

@immutable
sealed class AppBarEvent {}

class AppBarInitialEvent extends AppBarEvent {}

class HomeAppBarHomeHoverEvent extends AppBarEvent {}

class HomeAppBarHomeHoverRemovedEvent extends AppBarEvent {}

class HomeAppBarHomeClickedEvent extends AppBarEvent {}

class HomeAppBarEventHoverEvent extends AppBarEvent {}

class HomeAppBarEventHoverRemovedEvent extends AppBarEvent {}

class HomeAppBarEventClickedEvent extends AppBarEvent {}

class HomeAppBarNotesHoverEvent extends AppBarEvent {}

class HomeAppBarNotesHoverRemovedEvent extends AppBarEvent {}

class HomeAppBarNotesClickedEvent extends AppBarEvent {}
