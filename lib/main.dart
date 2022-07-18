import 'package:flutter/material.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/routes.dart';
import 'package:structure/views/introducePage/introduce_page.dart';

import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: them(),
      // home: IntroducePage(),
      initialRoute: IntroducePage.routeName,
      routes: routes,
    );
  }
}
