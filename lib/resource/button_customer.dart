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
    return InkWell(
        onTap: () => print('hello'),
        child: Container(
          width: width,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: ColorsData.primaryButton, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              text!,
              style: TextsStyle.titleButton,
            ),
          ),
        ));
  }
}
