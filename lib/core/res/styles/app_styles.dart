import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class AppStyle {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xff3b3b3b);
  static TextStyle headLineStyle2 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle1 = TextStyle(
    color: textColor,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = TextStyle(
    color: textColor,
    fontSize: 21,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle = TextStyle(
    color: textColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
