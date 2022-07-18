
import 'package:flutter/material.dart';

import 'resource/colors_data.dart';

ThemeData them() {
  return ThemeData(
    appBarTheme: AppBarTheme(
        color: ColorsData.appBarBackground,
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: ColorsData.appBarIcone)),
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Colors.blue,
  );
}
