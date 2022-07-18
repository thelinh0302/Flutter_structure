import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:structure/resource/size_config.dart';
import 'package:structure/resource/text_type.dart';

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
          Column(
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
        TextFormField(
          decoration: const InputDecoration(
              labelText: "Username", hintText: "Enter your username"),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration: const InputDecoration(
              labelText: "Password", hintText: "Enter your password"),
        )
      ]),
    );
  }
}
