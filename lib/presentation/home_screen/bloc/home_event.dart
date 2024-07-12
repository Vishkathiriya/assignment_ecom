part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {}

class HomeInitialEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class CategoryEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class CommunityEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class UserProfilesEvent extends HomeEvent {
  @override
  List<Object?> get props => [];
}

class BackToInitial extends HomeEvent {
  @override
  List<Object?> get props => [];
}
