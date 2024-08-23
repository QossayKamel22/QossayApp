import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/style/fonts.dart';
import 'profile_icon.dart';

class homeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onProfilePressed;

  homeAppBar({required this.onProfilePressed, required String title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'PCNC',
            textAlign: TextAlign.center,
            style: Fonts.headline2
          ),
          SizedBox(width: 0),
        ],
      ),
      actions: [
        ProfileIconButton(
          onPressed: onProfilePressed,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
