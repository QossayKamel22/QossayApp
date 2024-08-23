import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/routes/app_routes.dart';
import 'package:qossay_s_application1/data/services/api_services.dart';
import 'package:qossay_s_application1/domain/interactors/user_interactor.dart';

class RegisterController {
  final UserInteractor userInteractor;

  // Constructor that directly creates the necessary dependencies
  RegisterController()
      : userInteractor = UserInteractor(ApiService());

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> register(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final username = usernameController.text;
    final email = emailController.text;
    final password = passwordController.text;


    final response = await userInteractor.register(username, email, password);

    if (response != null && response.statusCode == 200) {
      Navigator.pushReplacementNamed(context, AppRoutes.dashboard);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registration Successful')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registration Failed')),
      );
    }
  }
}
