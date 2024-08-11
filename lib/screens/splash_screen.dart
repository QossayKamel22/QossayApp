import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qossay_s_application1/screens/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../app_provider.dart';
import 'dashboard_screen.dart';
import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<AppProvider>(
          builder: (context, provider, child) {
            if (provider.user != null) {
              Future.delayed(Duration(seconds: 2), () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()),
                );
              });
            } else {
              Future.delayed(Duration(seconds: 2), () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                bool? isFirstUse = await prefs.getBool('isLoggedIn') ?? false;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                         LoginScreen()),
                );
              });
            }

            return Center(
              child: Image.asset(
                'assets/images/pcnc.png',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
