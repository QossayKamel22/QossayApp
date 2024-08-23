import 'package:flutter/material.dart';
import 'package:qossay_s_application1/core/enums/e_font_style.dart';

class Fonts  {
  static const TextStyle headline1 = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 20.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const TextStyle snackText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: Colors.deepOrangeAccent,
  );

  static const TextStyle captionText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: Colors.black45,
  );

  static const TextStyle tabText = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.w600,
    color: Colors.red,
  );




  static TextStyle getTextStyle(EFontStyle type) {
    switch (type) {
      case EFontStyle.headline1:
        return headline1;
      case EFontStyle.headline2:
        return headline2;
      case EFontStyle.buttonText:
        return buttonText;
      case EFontStyle.bodyText:
        return bodyText;
      case EFontStyle.snackText:
        return snackText;
      case EFontStyle.captionText:
        return captionText;
      case EFontStyle.tabText:
        return tabText;
      default:
        return bodyText;
    }
  }
}