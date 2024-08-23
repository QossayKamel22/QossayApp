import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/style/fonts.dart';

class CustomSnackBar extends StatelessWidget {
  final String message;
  final Color textColor;

  CustomSnackBar({required this.message, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Text(
        message,
        style: Fonts.snackText),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.fromLTRB(20, 120, 20, 20),
    );
  }
}

void showCustomSnackBar(BuildContext context, String message, Color Color) {
  final snackBar = SnackBar(
    content: Text(message, style : Fonts.snackText),

     backgroundColor: Colors.black87,
    duration: Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.fromLTRB(20, 120, 20, 20),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
