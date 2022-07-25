import 'package:flutter/material.dart';
import 'package:structure/views/forgot_password/forgot_password.dart';

import '../../../resource/button_responsive.dart';
import '../../../resource/size_config.dart';
import '../../../widgets/login_with_facebook.dart';
import '../../../widgets/login_with_google.dart';
import '../../../widgets/text_form_field.dart';
import '../../../widgets/text_form_field_password.dart';

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
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your username';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormFieldPasswordCustom(
          hintText: 'Enter your password',
          labelText: 'Password',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
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
            onTap: (() =>  Navigator.pushNamed(context, ForgotPassword.routeName)), child: Text('Forget password?')),
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
