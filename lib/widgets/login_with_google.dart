import 'package:flutter/material.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/dimen.dart';
import 'package:structure/resource/text_type.dart';

class LoginWithGoogle extends StatelessWidget {
  bool? isIcon;
  double? width;
  String? text;
  LoginWithGoogle({Key? key, this.isIcon = false, this.text, this.width = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
          width: width,
          height: 48,
          decoration: BoxDecoration(
            color: ColorsData.buttonSocialGG,
            borderRadius: BorderRadius.circular(Dimen.radiousButton)
          ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Image.asset('assets/images/google.png'),
              ),
              SizedBox(width: 30,),
              Center( 
                child: Text(
                  'CONNECT WITH GOOGLE',
                  style: TextsStyle.titleLoginSocial,
                  textAlign: TextAlign.center,
                ) ,
              ),
            ],
          ),
        ),
    );
  }
}
