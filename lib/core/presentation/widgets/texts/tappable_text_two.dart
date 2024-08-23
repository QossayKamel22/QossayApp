import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/style/fonts.dart';

class TabbableTextTwo extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  TabbableTextTwo ({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
          text,
          style: Fonts.tabText
        ),
      ),
    );
  }
}
