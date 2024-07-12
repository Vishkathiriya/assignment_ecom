import 'package:ecommerce_assignment/utils/app_export.dart';

part 'home_event.dart';
part 'home_state.dart';

enum BottomBarState { initial, category, community, userProfile }

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(super.initialState) {
    on<HomeInitialEvent>(_onInitialize);
    on<CategoryEvent>(_onCategoryEvent);
    on<CommunityEvent>(_oncommunityEvent);
    on<UserProfilesEvent>(_onuserProfileEvent);
    on<BackToInitial>(_onBackToInitialEvent);
  }
  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(bottomBarState: BottomBarState.initial));
  }

  _onCategoryEvent(
    CategoryEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(bottomBarState: BottomBarState.category));
  }

  _oncommunityEvent(
    CommunityEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(bottomBarState: BottomBarState.community));
  }

  _onuserProfileEvent(
    UserProfilesEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(bottomBarState: BottomBarState.userProfile));
  }

  _onBackToInitialEvent(
    BackToInitial event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(bottomBarState: BottomBarState.initial));
  }
}
