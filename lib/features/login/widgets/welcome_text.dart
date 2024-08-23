import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/presentation/style/fonts.dart';

class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 24.0, top: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: Fonts.headline1
            ),
            Text(
              'Back!',
              style: Fonts.headline1
            ),
          ],
        ),
      ),
    );
  }
}