import 'package:ecommerce_assignment/utils/app_export.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';
  static const String homeScreen = '/home_screen';
  static const String userprofileScreen = '/user_profile_screen';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: HomeScreen.builder,
        homeScreen: HomeScreen.builder,
        userprofileScreen: UserProfileScreen.builder
      };
}
