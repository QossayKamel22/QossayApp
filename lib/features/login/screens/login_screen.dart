import 'package:flutter/material.dart';
import 'package:qossay_s_application1/data/services/api_services.dart';
import 'package:qossay_s_application1/domain/interactors/user_interactor.dart';
import 'package:qossay_s_application1/features/login/controllers/login_controller.dart';
import 'package:qossay_s_application1/features/login/widgets/login_body.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginController _controller;

  @override
  void initState() {
    super.initState();

    // Initialize ApiService and UserInteractor
    final apiService = ApiService();
    final userInteractor = UserInteractor(apiService);

    // Pass the UserInteractor instance to LoginController
    _controller = LoginController(userInteractor: userInteractor);

    // Check login status
    _controller.checkLoginStatus(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(controller: _controller),
    );
  }
}
