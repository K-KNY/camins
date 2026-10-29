import 'package:flutter/material.dart';

class AppStyles {
  static final Color green = Color(0xFF2E7D5B);
  static final Color lightGreen = Color(0xFFE3F1EA);
  static final Color orange = Color(0xFFF2994A);
  static final Color darkText = Color(0xFF1F2A2E);
  static final Color greyText = Color(0xFF6B7A80);
  static final Color background = Color(0xFFF6F8F7);
  static final Widget tinySeparator = SizedBox(width: 4, height: 4);
  static final Widget smallSeparator = SizedBox(width: 8, height: 8);
  static final Widget mediumSeparator = SizedBox(width: 16, height: 16);
  static final Widget bigSeparator = SizedBox(width: 24, height: 24);

  static final Color white = Colors.white;

  static final regionTitle = TextStyle(
    fontSize: 11,
    fontWeight: .bold,
    color: Colors.white,
  );

  static final routeTitle = TextStyle(
    fontSize: 26,
    fontWeight: .bold,
    color: AppStyles.white,
  );

  static final TextStyle favoriteText = TextStyle(
    color: AppStyles.white,
    fontSize: 11,
    fontWeight: .bold,
  );

  static final TextStyle opinionsText = TextStyle(
    color: AppStyles.white,
    fontSize: 11,
  );

  static final TextStyle valueDataText = TextStyle(
    color: AppStyles.darkText,
    fontSize: 15,
    fontWeight: .bold,
  );

  static final TextStyle labelDataText = TextStyle(
    color: AppStyles.greyText,
    fontSize: 12,
  );

  static final TextStyle sectionText = TextStyle(
    color: AppStyles.darkText,
    fontSize: 19,
    fontWeight: .bold,
  );

  static final TextStyle bodyText = TextStyle(
    color: AppStyles.greyText,
    fontSize: 15,
    height: 1.5,
  );

  static final TextStyle startButtonText = TextStyle(
    color: AppStyles.green,
    fontSize: 16,
    fontWeight: .bold,
  );

  static final Gradient imageShade = LinearGradient(
    begin: .topCenter,
    end: .bottomCenter,
    colors: [Colors.transparent, const Color.fromARGB(230, 0, 0, 0)],
  );
}
