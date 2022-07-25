import 'package:flutter/material.dart';
import 'package:structure/resource/size_config.dart';
import 'package:structure/resource/text_type.dart';

import 'forgot_password.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidht(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Forgot Password", style: TextsStyle.title),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'Enter your email address and we will send you a reset instructions')
                ],
              ),
            ),
            const SizedBox(height: 30),
            const FormForgotPassword()
          ],
        ),
      ),
    );
  }
}
