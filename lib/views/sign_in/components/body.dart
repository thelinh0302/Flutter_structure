import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:structure/resource/button_responsive.dart';
import 'package:structure/resource/size_config.dart';
import 'package:structure/resource/text_type.dart';

import '../../../widgets/login_with_facebook.dart';
import '../../../widgets/login_with_google.dart';
import '../../../widgets/text_form_field.dart';
import '../../../widgets/text_form_field_password.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
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
                Text(
                  "Welcome to",
                  style: TextsStyle.title,
                ),
                SizedBox(height: 10),
                RichText(
                  textAlign: TextAlign.left,
                  softWrap: true,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Enter your Phone number or Email for sign in,",
                        style: TextsStyle.subTitle),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print("The word touched is"),
                        text: " Or Create new account.",
                        style: TextsStyle.subTitleLink),
                  ]),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SignInForm()
        ],
      ),
    ));
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        TextFormFieldCustom(
          controller: controller1,
          hintText: 'Enter your username',
          labelText: 'Username',
          keyboardtype: TextInputType.text,
          inputAction: TextInputAction.next,
          isLabelEnabled: true,
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormFieldPasswordCustom(
          hintText: 'Enter your password',
          labelText: 'Password',
          controller: controller2,
          keyboardtype: TextInputType.visiblePassword,
          inputAction: TextInputAction.next,
          isLabelEnabled: true,
          isObscure: true,
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
            onTap: (() => print('object')), child: Text('Forget password?')),
        const SizedBox(height: 30),
        SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(46),
            child: GestureDetector(
                onTap: () {
                  final value1 = controller1.text;
                  final value2 = controller2.text;
                  print(value1);
                  print(value2);
                },
                child: ButtonResponsive(
                  text: 'SIGN IN',
                ))),
        const SizedBox(height: 30),
        Text('Or'),
        const SizedBox(height: 10),
        SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(46),
            child: LoginWithFacebook()),
        const SizedBox(height: 10),
        SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(46),
            child: LoginWithGoogle()),
      ]),
    );
  }
}
