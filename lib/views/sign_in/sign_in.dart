import 'package:flutter/material.dart';
import 'package:structure/resource/text_type.dart';

import 'components/body.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  static String routeName = '/sign_in';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in",style: TextsStyle.titleAppBar) ,
      ),
      body: Body(),
    );
  }
}
