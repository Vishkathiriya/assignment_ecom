import 'package:ecommerce_assignment/utils/app_export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static Widget builder(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(
            HomeState(bottomBarState: BottomBarState.initial),
          )..add(HomeInitialEvent()),
        ),
      ],
      child: const HomeScreen(),
    );
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themestate) {
        return BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return FadeTransition(
              opacity: _fadeAnimation,
              child: DoubleTapToExit(
                child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  appBar: _getAppbarContent(state),
                  body: AnimatedSwitcher(
                    duration: const Duration(seconds: 2),
                    child: _getbottombarContent(state),
                  ),
                  extendBody: true,
                  bottomNavigationBar: _buildNavigationBar(state, themestate),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildNavigationBar(HomeState state, ThemeState themestate) {
    return Card(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0.r),
              topRight: Radius.circular(24.0.r))),
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: NavigationBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.whitecolor,
        shadowColor: AppColors.blackcolor,
        indicatorColor: Colors.transparent,
        selectedIndex: _getSelectedIndex(state.bottomBarState),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: <Widget>[
          InkWell(
            onTap: () {
              context.read<HomeBloc>().add(HomeInitialEvent());
            },
            child: NavigationDestination(
              selectedIcon: _bottombarIcon(
                Assets.images.svg.icHome.path,
                themestate,
                isSelect: state.bottomBarState == BottomBarState.initial,
              ),
              icon: _bottombarIcon(Assets.images.svg.icHome.path, themestate),
              label: Lang.of(context).lbl_home,
              enabled: false,
            ),
          ),
          InkWell(
            onTap: () {
              context.read<HomeBloc>().add(CategoryEvent());
            },
            child: NavigationDestination(
              selectedIcon: _bottombarIcon(
                  Assets.images.svg.icCategory.path, themestate,
                  isSelect: state.bottomBarState == BottomBarState.category),
              icon:
                  _bottombarIcon(Assets.images.svg.icCategory.path, themestate),
              label: Lang.of(context).lbl_category,
              enabled: false,
            ),
          ),
          InkWell(
            onTap: () {
              context.read<HomeBloc>().add(CommunityEvent());
            },
            child: NavigationDestination(
              selectedIcon: _bottombarIcon(
                  Assets.images.svg.icCommunity.path, themestate,
                  isSelect: state.bottomBarState == BottomBarState.community),
              icon: _bottombarIcon(
                  Assets.images.svg.icCommunity.path, themestate),
              label: Lang.of(context).lbl_community,
              enabled: false,
            ),
          ),
          InkWell(
            onTap: () {
              context.read<HomeBloc>().add(UserProfilesEvent());
            },
            child: NavigationDestination(
              selectedIcon: _bottombarIcon(
                  Assets.images.svg.icUserProfile.path, themestate,
                  isSelect: state.bottomBarState == BottomBarState.userProfile),
              icon: _bottombarIcon(
                  Assets.images.svg.icUserProfile.path, themestate),
              label: Lang.of(context).lbl_user_profile,
              enabled: false,
            ),
          ),
        ],
      ),
    );
  }

  CustomImageView _bottombarIcon(String path, ThemeState themestate,
      {bool isSelect = false}) {
    return CustomImageView(
        imagePath: path,
        height: 25.h,
        color: isSelect
            ? AppColors.selectedIconColor
            : themestate.isDarkThemeOn
                ? AppColors.whitecolor
                : AppColors.iconColor);
  }

  int _getSelectedIndex(BottomBarState state) {
    switch (state) {
      case BottomBarState.initial:
        return 0;
      case BottomBarState.category:
        return 1;
      case BottomBarState.community:
        return 2;
      case BottomBarState.userProfile:
        return 3;
      default:
        return 0;
    }
  }

  Widget _getbottombarContent(HomeState state) {
    switch (state.bottomBarState) {
      case BottomBarState.initial:
        return HomeScreenWidget();
      case BottomBarState.category:
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: CustomImageView(
              imagePath: Assets.images.png.pngCommingSoon.path,
              height: 400.h,
              fit: BoxFit.cover,
            ),
          ),
        );
      case BottomBarState.community:
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: CustomImageView(
              imagePath: Assets.images.png.pngCommingSoon.path,
              height: 400.h,
              fit: BoxFit.cover,
            ),
          ),
        );
      case BottomBarState.userProfile:
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: CustomImageView(
              imagePath: Assets.images.png.pngCommingSoon.path,
              height: 400.h,
              fit: BoxFit.cover,
            ),
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  PreferredSizeWidget _getAppbarContent(HomeState state) {
    switch (state.bottomBarState) {
      case BottomBarState.initial:
        return EcommerceAppBar(
          title: Text(
            Lang.of(context).lbl_logo,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        );
      case BottomBarState.category:
        return AppBar(
          automaticallyImplyLeading: false,
        );
      case BottomBarState.community:
        return AppBar(
          automaticallyImplyLeading: false,
        );
      case BottomBarState.userProfile:
        return AppBar(
          automaticallyImplyLeading: false,
        );
      default:
        return AppBar(
          automaticallyImplyLeading: false,
        );
    }
  }
}
