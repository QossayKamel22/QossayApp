import 'package:flutter/material.dart';
import 'package:qossay_s_application1/features/splash/controllers/splash_controller.dart';
import 'package:qossay_s_application1/generated/assets.dart';

class SplashBody extends StatelessWidget {
  final SplashController controller;

  SplashBody({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      controller.checkLoginStatus(context);
    });

    return Center(
      child: Image.asset(
        Assets.pcncImage,
        width: 300,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}
