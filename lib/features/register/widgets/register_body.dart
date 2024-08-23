import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/widgets/buttons/custom_button.dart';
import 'package:qossay_s_application1/core/presentation/widgets/custom_text_field.dart';
import 'package:qossay_s_application1/core/presentation/widgets/texts/tappable_text.dart';
import 'package:qossay_s_application1/features/login/screens/login_screen.dart';
import 'package:qossay_s_application1/features/register/controllers/register_controller.dart';
import 'package:qossay_s_application1/features/register/widgets/creat_account_text.dart';

class RegisterBody extends StatelessWidget {
  final RegisterController controller;

  RegisterBody({required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(22.0),
      child: Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CreateAccountText(),
            SizedBox(height: 20),
            CustomTextField(
              controller: controller.usernameController,
              labelText: 'Username',
              prefixIcon: Icons.person_outline,
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: controller.emailController,
              labelText: 'Email',
              prefixIcon: Icons.email_outlined,
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: controller.passwordController,
              labelText: 'Password',
              prefixIcon: Icons.lock_outline,
              obscureText: true,
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: controller.confirmPasswordController,
              labelText: 'Confirm Password',
              prefixIcon: Icons.lock_outline,
              obscureText: true,
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      children: [
                        TextSpan(text: 'By clicking the '),
                        TextSpan(
                          text: 'register ',
                          style: TextStyle(color: Colors.red),
                        ),
                        TextSpan(text: 'button, you agree to the public offer'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 70),
            CustomButton(
              onPressed: () {
                controller.register(context);
              },
              text: 'Create Account',
              color: Colors.orange,
            ),
            Padding(
              padding: EdgeInsets.only(top: 28),
              child: TappableText(
                text: 'I Already Have an Account ',
                tappableText: 'Login',
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
