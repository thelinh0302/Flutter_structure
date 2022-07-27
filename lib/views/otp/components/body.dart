import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:structure/resource/button_responsive.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/dimen.dart';
import 'package:structure/resource/text_type.dart';

import '../../../resource/size_config.dart';
import 'form_otp.dart';

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
              padding: const EdgeInsets.only(right: 10),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Verify phone number',
                      style: TextsStyle.title,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Text(
                          'Enter the 4-Digit code sent to you at +1501333982',
                          style: TextsStyle.subTitle,
                          textAlign: TextAlign.center,
                        ),
                        
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OTPForm()
          ],
        ),
      ),
    );
  }
}


