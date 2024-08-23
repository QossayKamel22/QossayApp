import 'package:flutter/material.dart';
import 'package:qossay_s_application1/features/dashboard/screens/dashboard_screen.dart';
import 'package:qossay_s_application1/features/login/screens/login_screen.dart';
import 'package:qossay_s_application1/features/register/screens/register_screen.dart';
import 'package:qossay_s_application1/features/search/screens/search_screen.dart';
import 'package:qossay_s_application1/features/splash/screens/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String dashboard = '/dashboard';
  static const String search = '/search';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case dashboard:
        return MaterialPageRoute(builder: (_) => DashboardScreen());
      case search:
        final args = settings.arguments as Map<String, dynamic>;
        final initialQuery = args['initialQuery'] as String;
        return MaterialPageRoute(
          builder: (_) => SearchScreen(initialQuery: initialQuery),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
