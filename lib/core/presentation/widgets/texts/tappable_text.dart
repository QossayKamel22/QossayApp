import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/style/fonts.dart';

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
            style: Fonts.tabText
          ),
        ),
      ],
    );
  }
}
