import 'package:flutter/material.dart';
import 'package:qossay_s_application1/controllers/login_controller.dart';
import 'package:qossay_s_application1/widgets/tappable_text_two.dart';
import 'package:qossay_s_application1/widgets/welcome_text.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfiled.dart';
import '../widgets/tappable_text.dart';


class LoginScreen extends StatefulWidget {
  final LoginController controller = LoginController();
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    widget.controller.checkLoginStatus(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              WelcomeText(),
              SizedBox(height: 25.0),
              CustomTextField(
                controller: widget.controller.usernameController,
                labelText: 'Username or Email',
                prefixIcon: Icons.person,
              ),
              SizedBox(height: 15.0),
              CustomTextField(
                controller: widget.controller.passwordController,
                labelText: 'Password',
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              TabbableTextTwo(
                text: 'Forgot Password?',
                onTap: () {
                  widget.controller.showForgotPasswordDialog(context);
                },
              ),
              SizedBox(height: 40.0),
              CustomButton(
                onPressed: () {
                  widget.controller.login(context);
                },
                text: 'Login',
              ),
              SizedBox(height: 28.0),
              TappableText(
                text: 'Create An Account ',
                tappableText: 'Sign Up',
                onTap: () {
                  widget.controller.navigateToRegister(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
