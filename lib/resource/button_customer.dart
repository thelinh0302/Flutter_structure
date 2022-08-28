import 'package:flutter/material.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/dimen.dart';
import 'package:structure/resource/text_type.dart';

class ButtonCustomer extends StatelessWidget {
  bool? isIcon;
  double? width;
  String? text;
  ButtonCustomer({Key? key, this.isIcon = false, this.text, this.width = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 38,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimen.radiousButton)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              text!,
              style: TextsStyle.titleButton,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
