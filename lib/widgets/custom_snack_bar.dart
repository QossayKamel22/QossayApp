import 'package:flutter/material.dart';

class CustomSnackBar extends StatelessWidget {
  final String message;
  final Color textColor;

  CustomSnackBar({required this.message, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Text(
        message,
        style: TextStyle(color: textColor),
      ),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.fromLTRB(20, 120, 20, 20),
    );
  }
}

void showCustomSnackBar(BuildContext context, String message, Color Color) {
  final snackBar = SnackBar(
    content: Text(message, style : TextStyle(color: Color)),

     backgroundColor: Colors.black87,
    duration: Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.fromLTRB(20, 120, 20, 20),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
