// login_controller.dart
import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/mixins/validation_mixin.dart';
import 'package:qossay_s_application1/core/routes/app_routes.dart';
import 'package:qossay_s_application1/domain/interactors/user_interactor.dart';

import 'package:qossay_s_application1/features/login/widgets/forget_password_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController with ValidationMixin {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final UserInteractor userInteractor;

  LoginController({required this.userInteractor});

  Future<void> checkLoginStatus(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    if (isLoggedIn) {
      Navigator.pushReplacementNamed(context, AppRoutes.dashboard);
    }
  }

  Future<void> login(BuildContext context) async {
    final username = usernameController.text;
    final password = passwordController.text;

    final response = await userInteractor.login(username, password);

    if (response != null && response.statusCode == 200) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Successful')),
      );
      Navigator.pushReplacementNamed(context, AppRoutes.dashboard);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Failed')),
      );
    }
  }

  void showForgotPasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => ForgotPasswordDialog(),
    );
  }

  void navigateToRegister(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.register);
  }
}
