import 'package:ecommerce_assignment/utils/app_export.dart';

// Service to manage navigation operations within the app using a global navigator key
class NavigatorService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // Pushes a named route onto the navigator stack
  static Future<dynamic> pushNamed(String routeName,
      {dynamic arguments}) async {
    return navigatorKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  // Pops the top-most route off the navigator stack
  static void goBack() {
    return navigatorKey.currentState?.pop();
  }

  // Pushes a named route and removes all the routes until the predicate returns true
  static Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {bool routePredicate = false, dynamic arguments}) async {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(
        routeName, (route) => routePredicate,
        arguments: arguments);
  }

  // Pops the current route off the navigator stack and pushes a new named route
  static Future<dynamic> popAndPushNamed(String routeName,
      {dynamic arguments}) async {
    return navigatorKey.currentState
        ?.popAndPushNamed(routeName, arguments: arguments);
  }

  // Replaces the old route with a new named route
  static Future<dynamic> replaceRoute(String oldRoute, String newRoute,
      {dynamic arguments}) async {
    navigatorKey.currentState?.removeRoute(
      ModalRoute.of(navigatorKey.currentState!.context)!,
    );
    return navigatorKey.currentState
        ?.pushReplacementNamed(newRoute, arguments: arguments);
  }

  // Pops routes off the navigator stack until the specified route is reached
  static void popUntil(String routeName) {
    return navigatorKey.currentState?.popUntil(ModalRoute.withName(routeName));
  }

  // Replaces the current route with a new named route
  static Future<dynamic> pushReplacement(String routeName,
      {dynamic arguments}) async {
    return navigatorKey.currentState
        ?.pushReplacementNamed(routeName, arguments: arguments);
  }

  // Pops routes off the navigator stack until the predicate returns true and then pushes a new named route
  static Future<dynamic> pushAndRemoveUntil(String routeName,
      {bool routePredicate = false, dynamic arguments}) async {
    navigatorKey.currentState?.popUntil((route) => routePredicate);
    return navigatorKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }
}
