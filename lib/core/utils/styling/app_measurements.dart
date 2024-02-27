import 'package:flutter/material.dart';

class AppMeasures {
  static double pageHorizantalMargin = 20;
  static double pageVerticalMargin = 15;

  static double bottomNavIconSize = 23;
  static double dividerHeight = 6;
  static double dividerThickness = 1;

  static double pageHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static EdgeInsets defaultPadding = EdgeInsets.symmetric(
    horizontal: pageHorizantalMargin,
    vertical: pageVerticalMargin,
  );
  static double pageWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
