import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:structure/resource/dimen.dart';
import 'package:structure/resource/text_type.dart';

import '../../../resource/size_config.dart';

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
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        Text(
                          'Enter the 4-Digit code sent to you at +1501333982',
                          style: TextsStyle.subTitle,
                          textAlign: TextAlign.center,
                        ),
                        TweenAnimationBuilder(
                            tween: Tween<double>(begin: 30.0, end: 0),
                            duration: Duration(seconds: 30),
                            builder: (context, double val, child) =>
                                Text("${val.toInt()}"))
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenWidht(60),
            child: TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextField(value: value, focusNode: pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidht(60),
            child: TextFormField(
              focusNode: pin2FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextField(value: value, focusNode: pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidht(60),
            child: TextFormField(
              focusNode: pin3FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                nextField(value: value, focusNode: pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidht(60),
            child: TextFormField(
              obscureText: true,
              focusNode: pin4FocusNode,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                pin4FocusNode.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
