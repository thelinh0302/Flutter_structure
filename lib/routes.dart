import 'package:flutter/widgets.dart';
import 'package:structure/views/forgot_password/forgot_password.dart';
import 'package:structure/views/introducePage/introduce_page.dart';
import 'package:structure/views/sign_in/sign_in.dart';

//we use name route
//All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  IntroducePage.routeName: (context) => const IntroducePage(),
  SignIn.routeName:(context) => const SignIn(),
  ForgotPassword.routeName:(context) => const ForgotPassword()
};
