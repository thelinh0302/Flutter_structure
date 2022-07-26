import 'package:flutter/material.dart';
import 'package:structure/resource/text_type.dart';

import 'components/body.dart';

class OTP extends StatelessWidget {
  const OTP({Key? key}) : super(key: key);
  static String routeName = '/otp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify phone number', style: TextsStyle.titleAppBar),
      ),
      body: Body(),
    );
  }
}
