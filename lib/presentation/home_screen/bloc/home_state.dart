part of 'home_bloc.dart';

class HomeState extends Equatable {
  HomeState({
    required this.bottomBarState,
  });

  BottomBarState bottomBarState;

  @override
  List<Object?> get props => [bottomBarState];
  HomeState copyWith({BottomBarState? bottomBarState}) {
    return HomeState(bottomBarState: bottomBarState ?? this.bottomBarState);
  }
}
