import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:structure/resource/button_responsive.dart';
import 'package:structure/resource/size_config.dart';
import 'package:structure/resource/text_type.dart';
import 'package:structure/widgets/login_with_facebook.dart';
import 'package:structure/widgets/login_with_google.dart';
import 'package:structure/widgets/text_form_field.dart';

import '../../../widgets/text_form_field_password.dart';

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
              padding: const EdgeInsets.only(right: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create Account", style: TextsStyle.title),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    softWrap: true,
                    text: TextSpan(children: [
                      TextSpan(
                          text:
                              "Enter your name, Email and Password for sign up",
                          style: TextsStyle.subTitle),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => Navigator.pushNamed(context, '/sign_in'),
                          text: ' Or Already have account?',
                          style: TextsStyle.subTitleLink)
                    ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SignUpForm()
          ],
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormFieldCustom(
              hintText: 'Enter your username',
              labelText: 'Username',
              inputAction: TextInputAction.next,
              isLabelEnabled: true,
              controller: username,
              keyboardtype: TextInputType.text),
          TextFormFieldCustom(
              hintText: 'Enter your email',
              labelText: 'Email',
              inputAction: TextInputAction.next,
              isLabelEnabled: true,
              controller: email,
              keyboardtype: TextInputType.emailAddress),
          TextFormFieldCustom(
              hintText: 'Enter your phone',
              labelText: 'Phone',
              inputAction: TextInputAction.next,
              isLabelEnabled: true,
              controller: password,
              isObscure: true,
              keyboardtype: TextInputType.number),
          TextFormFieldPasswordCustom(
              hintText: 'Enter your password',
              labelText: 'Password',
              inputAction: TextInputAction.next,
              isLabelEnabled: true,
              controller: password,
              isObscure: true,
              keyboardtype: TextInputType.visiblePassword),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(46),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/otp');
              },
              child: ButtonResponsive(
                text: 'SIGN UP',
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'By Signing up you agree to our Terms Conditions & Privacy Policy.',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text('Or'),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(46),
            child: LoginWithFacebook(),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(46),
            child: LoginWithGoogle(),
          ),
        ],
      ),
    );
  }
}
