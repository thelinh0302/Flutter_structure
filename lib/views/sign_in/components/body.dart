import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:structure/resource/size_config.dart';
import 'package:structure/resource/text_type.dart';

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
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        TextFormFieldCustom(
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
          keyboardtype: TextInputType.visiblePassword,
          inputAction: TextInputAction.next,
          isLabelEnabled: true,
          isObscure: true,
        ),
      ]),
    );
  }
}
