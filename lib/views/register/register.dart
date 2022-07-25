import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:structure/resource/text_type.dart';

import 'components/body.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);
  static String routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account', style: TextsStyle.titleAppBar),
      ),
      body: Body(),
    );
  }
}
