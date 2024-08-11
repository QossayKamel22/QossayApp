import 'package:flutter/material.dart';

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
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
