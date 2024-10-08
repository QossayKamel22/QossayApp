import 'package:flutter/material.dart';
import 'package:qossay_s_application1/controllers/register_controller.dart';
import '../widgets/creat_account_text.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_textfiled.dart';
import '../widgets/tappable_text.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  final RegisterController controller = RegisterController();
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22.0),
        child: Form(
          key: widget.controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CreateAccountText(),
              SizedBox(height: 20),
              CustomTextField(
                controller: widget.controller.usernameController,
                labelText: 'Username',
                prefixIcon: Icons.person_outline,
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: widget.controller.emailController,
                labelText: 'Email',
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: widget.controller.passwordController,
                labelText: 'Password',
                prefixIcon: Icons.lock_outline,
                obscureText: true,
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: widget.controller.confirmPasswordController,
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
                          TextSpan(
                              text: 'button, you agree to the public offer'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),
              CustomButton(
                onPressed: () {
                  widget.controller.register(context);
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
      ),
    );
  }
}
