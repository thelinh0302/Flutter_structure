import 'package:flutter/widgets.dart';
import 'package:structure/views/forgot_password/forgot_password.dart';
import 'package:structure/views/home/home_screen.dart';
import 'package:structure/views/introducePage/introduce_page.dart';
import 'package:structure/views/otp/otp.dart';
import 'package:structure/views/register/register.dart';
import 'package:structure/views/sign_in/sign_in.dart';

import 'views/home/main.dart';

//we use name route
//All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  IntroducePage.routeName: (context) => const IntroducePage(),
  SignIn.routeName: (context) => const SignIn(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  Register.routeName: (context) => const Register(),
  OTP.routeName: (context) => const OTP(),
  MainScreen.routeName: (context) => MainScreen()
};
