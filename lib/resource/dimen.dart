import 'package:flutter/material.dart';

import 'colors_data.dart';
import 'size_config.dart';

class Dimen {
  //input
  static const double borderInput = 10.0;
  static const double paddingChildInput = 10.0;

  /// button
  static const double radiousButton = 10.0;

  /// dialog
  static const double dialogRadius = 15;

  /// buttom
  static const double paddingContentButtom = 15;
  // common
  static const double marginsContent = 15;

}
final otpInputDecoration = InputDecoration(
      contentPadding:
          EdgeInsets.symmetric(vertical: getProportionateScreenWidht(15)),
      enabledBorder: outLineInputBorder(),
      focusedBorder: outLineInputBorder(),
      border: outLineInputBorder(),
      
  ); 

OutlineInputBorder outLineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide:  const BorderSide(color: ColorsData.borderInput),
  );
}
