import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

double? getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;

  //812 is the layout height that design user
  return (inputHeight / 812.0) * screenHeight!;
}

double getProportionateScreenWidht(double inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;

  //812 is the layout width that design user
  return (inputWidth / 375.0) * screenWidth!;
}
