import 'package:flutter/material.dart';
import 'package:structure/resource/colors_data.dart';
import 'package:structure/resource/dimen.dart';
import 'package:structure/resource/text_type.dart';

class ButtonResponsive extends StatelessWidget {
  bool? isIcon;
  double? width;
  String? text;
  ButtonResponsive({Key? key, this.isIcon = false, this.text, this.width = 120})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
          width: width,
          height: 48,
          decoration: BoxDecoration(
            color: isIcon == false ? ColorsData.primaryButton : ColorsData.secondaryButton,
            borderRadius: BorderRadius.circular(Dimen.radiousButton)
          ),
        child: Row(
            children: [
              Container(
                child: Text(
                  text!,
                  style: TextsStyle.titleLogin,
                ) ,
              )
            ],
          ),
        ),
    );
  }
}
