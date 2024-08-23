import 'package:flutter/material.dart';
import 'package:qossay_s_application1/features/splash/controllers/splash_controller.dart';
import 'package:qossay_s_application1/features/splash/widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  final SplashController _controller = SplashController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBody(controller: _controller),
    );
  }
}
