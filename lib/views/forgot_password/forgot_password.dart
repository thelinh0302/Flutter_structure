import 'package:flutter/material.dart';
import 'package:structure/resource/text_type.dart';

import 'components/body.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  static String routeName = '/forgot_password';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password",style: TextsStyle.titleAppBar) ,
      ),
      body: Body(),
    );
  }
}
