import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:qossay_s_application1/core/app_provider/app_provider.dart';
import 'package:provider/provider.dart';


class SplashController {
  Future<void> checkLoginStatus(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    final provider = Provider.of<AppProvider>(context, listen: false);

    if (isLoggedIn && provider.user != null) {
      Navigator.pushReplacementNamed(context, AppRoutes.dashboard);
    } else {
      Navigator.pushReplacementNamed(context, AppRoutes.login);
    }
  }
}
