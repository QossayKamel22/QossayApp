import 'package:flutter/material.dart';
import 'package:qossay_s_application1/screens/dashboard_screen.dart';
import 'package:qossay_s_application1/widgets/custom_snack_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future<void> register(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      if (usernameController.text.isEmpty ||
          emailController.text.isEmpty ||
          passwordController.text.isEmpty ||
          confirmPasswordController.text.isEmpty) {
        showCustomSnackBar(context, 'Please fill in your data', Colors.red);
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => DashboardScreen()),
        );

        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);

        showCustomSnackBar(
            context, 'Account created successfully!', Colors.green);
      }
    } else {
      showCustomSnackBar(context, 'Please fill in your data', Colors.red);
    }
  }
}
