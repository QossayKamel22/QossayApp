import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/widgets/buttons/custom_button.dart';
import 'package:qossay_s_application1/core/presentation/widgets/custom_text_field.dart';
import 'package:qossay_s_application1/core/presentation/widgets/texts/tappable_text.dart';
import 'package:qossay_s_application1/core/presentation/widgets/texts/tappable_text_two.dart';
import 'package:qossay_s_application1/features/login/controllers/login_controller.dart';
import 'package:qossay_s_application1/features/login/widgets/welcome_text.dart';

class LoginBody extends StatelessWidget {
  final LoginController controller;

  LoginBody({required this.controller});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WelcomeText(),
            SizedBox(height: 25.0),
            CustomTextField(
              controller: controller.usernameController,
              labelText: 'Username or Email',
              prefixIcon: Icons.person,
            ),
            SizedBox(height: 15.0),
            CustomTextField(
              controller: controller.passwordController,
              labelText: 'Password',
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
            TabbableTextTwo(
              text: 'Forgot Password?',
              onTap: () {
                controller.showForgotPasswordDialog(context);
              }
            ),
            SizedBox(height: 40.0),
            CustomButton(
              onPressed: () {
                controller.login(context);
              },
              text: 'Login',
            ),
            SizedBox(height: 28.0),
            TappableText(
              text: 'Create An Account ',
              tappableText: 'Sign Up',
              onTap: () {
                controller.navigateToRegister(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
