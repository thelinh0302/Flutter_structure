import 'package:flutter/material.dart';
import 'package:structure/widgets/text_form_field.dart';

import '../../../resource/button_responsive.dart';
import '../../../resource/size_config.dart';

class FormForgotPassword extends StatefulWidget {
  const FormForgotPassword({Key? key}) : super(key: key);

  @override
  State<FormForgotPassword> createState() => _FormForgotPasswordState();
}

class _FormForgotPasswordState extends State<FormForgotPassword> {
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormFieldCustom(
              hintText: 'Please enter your email',
              labelText: 'Email',
              inputAction: TextInputAction.next,
              isLabelEnabled: true,
              controller: email,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
              keyboardtype: TextInputType.emailAddress),
              const SizedBox(height: 30,),
              SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(46),
            child: GestureDetector(
                onTap: () {
                  final value1 = email.text;
                  print(value1);
                },
                child: ButtonResponsive(
                  text: 'RESET PASSWORD',
                ))),
        ],
      ),
    );
  }
}
