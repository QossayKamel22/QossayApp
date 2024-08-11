import 'package:flutter/material.dart';

class TappableText extends StatelessWidget {
  final String text;
  final String tappableText;
  final VoidCallback onTap;

  TappableText({
    required this.text,
    required this.tappableText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        GestureDetector(
          onTap: onTap,
          child: Text(
            tappableText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
